Shader "TK_Tools/Decal" {
	Properties {
		_Tint ("Tint", Vector) = (1,1,1,0)
		[ToggleUI] _Use_Color_s_Alpha_Instead_of_Mask ("Use Color's Alpha Instead of Mask", Float) = 0
		[NoScaleOffset] _Color_CA ("Color (CA)", 2D) = "white" {}
		[ToggleUI] _Use_CRM_Mask ("Use CRM Mask?", Float) = 0
		[NoScaleOffset] _Mask_R_Color_Roughness_G_Normal_Map ("Mask (R: Color/Roughness, G: Normal Map)", 2D) = "white" {}
		_Opacity ("Opacity", Float) = 1
		_Opacity_MAOS ("Opacity (MAOS)", Float) = 1
		[NoScaleOffset] _Normal ("Normal", 2D) = "white" {}
		[NoScaleOffset] _ORM ("ORM", 2D) = "white" {}
		_Roughness_Multiply ("Roughness Multiply", Float) = 1
		[ToggleUI] _Multiply_Vertex_Alpha ("Multiply Vertex Alpha?", Float) = 0
		_UV_Scale ("UV Scale", Vector) = (1,1,0,0)
		[ToggleUI] _Enable_UV_Scaling ("Enable UV Scaling?", Float) = 0
		[ToggleUI] _UV_Scaling_Wall ("UV Scaling - Wall", Float) = 0
		[ToggleUI] _UV_Scaling_Floor ("UV Scaling - Floor", Float) = 0
		[ToggleUI] _UV_Scaling_Trim ("UV Scaling - Trim", Float) = 0
		[HideInInspector] _DrawOrder ("Draw Order", Float) = 0
		[Enum(Depth Bias, 0, View Bias, 1)] [HideInInspector] _DecalMeshBiasType ("Float", Float) = 0
		[HideInInspector] _DecalMeshDepthBias ("DecalMesh DepthBias", Float) = 0
		[HideInInspector] _DecalMeshViewBias ("DecalMesh ViewBias", Float) = 0
		[HideInInspector] _DecalStencilWriteMask ("Float", Float) = 0
		[HideInInspector] _DecalStencilRef ("Float", Float) = 0
		[ToggleUI] [HideInInspector] _AffectAlbedo ("Boolean", Float) = 1
		[ToggleUI] [HideInInspector] _AffectNormal ("Boolean", Float) = 1
		[ToggleUI] [HideInInspector] _AffectAO ("Boolean", Float) = 1
		[ToggleUI] [HideInInspector] _AffectMetal ("Boolean", Float) = 1
		[ToggleUI] [HideInInspector] _AffectSmoothness ("Boolean", Float) = 1
		[HideInInspector] _DecalColorMask0 ("Float", Float) = 0
		[HideInInspector] _DecalColorMask1 ("Float", Float) = 0
		[HideInInspector] _DecalColorMask2 ("Float", Float) = 0
		[HideInInspector] _DecalColorMask3 ("Float", Float) = 0
		[HideInInspector] [NoScaleOffset] unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" {}
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType" = "Opaque" }
		LOD 200

		Pass
		{
			HLSLPROGRAM
			#pragma vertex vert
			#pragma fragment frag

			float4x4 unity_MatrixMVP;

			struct Vertex_Stage_Input
			{
				float3 pos : POSITION;
			};

			struct Vertex_Stage_Output
			{
				float4 pos : SV_POSITION;
			};

			Vertex_Stage_Output vert(Vertex_Stage_Input input)
			{
				Vertex_Stage_Output output;
				output.pos = mul(unity_MatrixMVP, float4(input.pos, 1.0));
				return output;
			}

			float4 frag(Vertex_Stage_Output input) : SV_TARGET
			{
				return float4(1.0, 1.0, 1.0, 1.0); // RGBA
			}

			ENDHLSL
		}
	}
	Fallback "Hidden/Shader Graph/FallbackError"
	//CustomEditor "UnityEditor.ShaderGraph.GenericShaderGraphMaterialGUI"
}