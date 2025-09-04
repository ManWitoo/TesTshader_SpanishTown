Shader "HDRP/DefaultFogVolume" {
	Properties {
		[NoScaleOffset] _Mask ("Mask", 3D) = "white" {}
		_ScrollSpeed ("Scroll Speed", Vector) = (0,0,0,0)
		_Tiling ("Tiling", Vector) = (0,0,0,0)
		_AlphaOnlyTexture ("Alpha Only Texture", Float) = 0
		[Enum(UnityEngine.Rendering.HighDefinition.LocalVolumetricFogBlendingMode)] [HideInInspector] _FogVolumeBlendMode ("Float", Float) = 1
		[Enum(UnityEngine.Rendering.BlendMode)] [HideInInspector] _FogVolumeDstColorBlend ("Float", Float) = 1
		[Enum(UnityEngine.Rendering.BlendMode)] [HideInInspector] _FogVolumeSrcColorBlend ("Float", Float) = 1
		[Enum(UnityEngine.Rendering.BlendMode)] [HideInInspector] _FogVolumeDstAlphaBlend ("Float", Float) = 1
		[Enum(UnityEngine.Rendering.BlendMode)] [HideInInspector] _FogVolumeSrcAlphaBlend ("Float", Float) = 1
		[Enum(UnityEngine.Rendering.BlendOp)] [HideInInspector] _FogVolumeColorBlendOp ("Float", Float) = 0
		[Enum(UnityEngine.Rendering.BlendOp)] [HideInInspector] _FogVolumeAlphaBlendOp ("Float", Float) = 0
		[HideInInspector] _FogVolumeSingleScatteringAlbedo ("Color", Vector) = (1,1,1,1)
		[HideInInspector] _FogVolumeFogDistanceProperty ("Float", Float) = 10
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