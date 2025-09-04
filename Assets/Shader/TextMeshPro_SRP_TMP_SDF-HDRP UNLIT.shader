Shader "TextMeshPro/SRP/TMP_SDF-HDRP UNLIT" {
	Properties {
		[HDR] _FaceColor ("Face Color", Vector) = (1,1,1,1)
		_IsoPerimeter ("Outline Width", Vector) = (0,0,0,0)
		[HDR] _OutlineColor1 ("Outline Color 1", Vector) = (0,1,1,1)
		[HDR] _OutlineColor2 ("Outline Color 2", Vector) = (0.009433985,0.02534519,1,1)
		[HDR] _OutlineColor3 ("Outline Color 3", Vector) = (0,0,0,1)
		_OutlineOffset1 ("Outline Offset 1", Vector) = (0,0,0,0)
		_OutlineOffset2 ("Outline Offset 2", Vector) = (0,0,0,0)
		_OutlineOffset3 ("Outline Offset 3", Vector) = (0,0,0,0)
		[ToggleUI] _OutlineMode ("OutlineMode", Float) = 0
		_Softness ("Softness", Vector) = (0,0,0,0)
		[NoScaleOffset] _FaceTex ("Face Texture", 2D) = "white" {}
		_FaceUVSpeed ("_FaceUVSpeed", Vector) = (0,0,0,0)
		_FaceTex_ST ("_FaceTex_ST", Vector) = (1,1,0,0)
		[NoScaleOffset] _OutlineTex ("Outline Texture", 2D) = "white" {}
		_OutlineTex_ST ("_OutlineTex_ST", Vector) = (1,1,0,0)
		_OutlineUVSpeed ("_OutlineUVSpeed", Vector) = (0,0,0,0)
		_UnderlayColor ("_UnderlayColor", Vector) = (0,0,0,1)
		_UnderlayOffset ("Underlay Offset", Vector) = (0,0,0,0)
		_UnderlayDilate ("Underlay Dilate", Float) = 0
		_UnderlaySoftness ("_UnderlaySoftness", Float) = 0
		[ToggleUI] _BevelType ("Bevel Type", Float) = 0
		_BevelAmount ("Bevel Amount", Range(0, 1)) = 0.25
		_BevelOffset ("Bevel Offset", Range(-0.5, 0.5)) = 0
		_BevelWidth ("Bevel Width", Range(0, 0.5)) = 0.5
		_BevelRoundness ("Bevel Roundness", Range(0, 1)) = 0
		_BevelClamp ("Bevel Clamp", Range(0, 1)) = 0
		[HDR] _SpecularColor ("Light Color", Vector) = (1,1,1,1)
		_LightAngle ("Light Angle", Range(0, 6.28)) = 0
		_SpecularPower ("Specular Power", Range(0, 4)) = 1
		_Reflectivity ("Reflectivity Power", Range(5, 15)) = 5
		_Diffuse ("Diffuse Shadow", Range(0, 1)) = 0.3
		_Ambient ("Ambient Shadow", Range(0, 1)) = 0.3
		[NoScaleOffset] _MainTex ("_MainTex", 2D) = "white" {}
		_GradientScale ("_GradientScale", Float) = 10
		_ScaleRatioA ("_ScaleRatioA", Float) = 0
		[HideInInspector] _EmissionColor ("Color", Vector) = (1,1,1,1)
		[HideInInspector] _RenderQueueType ("Float", Float) = 4
		[ToggleUI] [HideInInspector] _AddPrecomputedVelocity ("Boolean", Float) = 0
		[ToggleUI] [HideInInspector] _DepthOffsetEnable ("Boolean", Float) = 0
		[ToggleUI] [HideInInspector] _ConservativeDepthOffsetEnable ("Boolean", Float) = 0
		[ToggleUI] [HideInInspector] _TransparentWritingMotionVec ("Boolean", Float) = 0
		[ToggleUI] [HideInInspector] _AlphaCutoffEnable ("Boolean", Float) = 1
		[HideInInspector] _TransparentSortPriority ("_TransparentSortPriority", Float) = 0
		[ToggleUI] [HideInInspector] _UseShadowThreshold ("Boolean", Float) = 0
		[ToggleUI] [HideInInspector] _DoubleSidedEnable ("Boolean", Float) = 0
		[Enum(Flip, 0, Mirror, 1, None, 2)] [HideInInspector] _DoubleSidedNormalMode ("Float", Float) = 2
		[HideInInspector] _DoubleSidedConstants ("Vector4", Vector) = (1,1,-1,0)
		[Enum(Auto, 0, On, 1, Off, 2)] [HideInInspector] _DoubleSidedGIMode ("Float", Float) = 0
		[ToggleUI] [HideInInspector] _TransparentDepthPrepassEnable ("Boolean", Float) = 0
		[ToggleUI] [HideInInspector] _TransparentDepthPostpassEnable ("Boolean", Float) = 0
		[ToggleUI] [HideInInspector] _PerPixelSorting ("Boolean", Float) = 0
		[HideInInspector] _SurfaceType ("Float", Float) = 1
		[HideInInspector] _BlendMode ("Float", Float) = 0
		[HideInInspector] _SrcBlend ("Float", Float) = 1
		[HideInInspector] _DstBlend ("Float", Float) = 0
		[HideInInspector] _DstBlend2 ("Float", Float) = 0
		[HideInInspector] _AlphaSrcBlend ("Float", Float) = 1
		[HideInInspector] _AlphaDstBlend ("Float", Float) = 0
		[ToggleUI] [HideInInspector] _ZWrite ("Boolean", Float) = 0
		[ToggleUI] [HideInInspector] _TransparentZWrite ("Boolean", Float) = 0
		[HideInInspector] _CullMode ("Float", Float) = 2
		[ToggleUI] [HideInInspector] _EnableFogOnTransparent ("Boolean", Float) = 1
		[HideInInspector] _CullModeForward ("Float", Float) = 2
		[Enum(Front, 1, Back, 2)] [HideInInspector] _TransparentCullMode ("Float", Float) = 2
		[Enum(UnityEngine.Rendering.HighDefinition.OpaqueCullMode)] [HideInInspector] _OpaqueCullMode ("Float", Float) = 2
		[HideInInspector] _ZTestDepthEqualForOpaque ("Float", Float) = 4
		[Enum(UnityEngine.Rendering.CompareFunction)] [HideInInspector] _ZTestTransparent ("Float", Float) = 4
		[ToggleUI] [HideInInspector] _TransparentBackfaceEnable ("Boolean", Float) = 0
		[ToggleUI] [HideInInspector] _EnableBlendModePreserveSpecularLighting ("Boolean", Float) = 0
		[ToggleUI] [HideInInspector] _ExcludeFromTUAndAA ("Boolean", Float) = 0
		[HideInInspector] _StencilRef ("Float", Float) = 0
		[HideInInspector] _StencilWriteMask ("Float", Float) = 6
		[HideInInspector] _StencilRefDepth ("Float", Float) = 1
		[HideInInspector] _StencilWriteMaskDepth ("Float", Float) = 9
		[HideInInspector] _StencilRefMV ("Float", Float) = 33
		[HideInInspector] _StencilWriteMaskMV ("Float", Float) = 43
		[HideInInspector] _StencilRefDistortionVec ("Float", Float) = 4
		[HideInInspector] _StencilWriteMaskDistortionVec ("Float", Float) = 4
		[HideInInspector] [NoScaleOffset] unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" {}
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType"="Opaque" }
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

			Texture2D<float4> _MainTex;
			SamplerState sampler_MainTex;

			struct Fragment_Stage_Input
			{
				float2 uv : TEXCOORD0;
			};

			float4 frag(Fragment_Stage_Input input) : SV_TARGET
			{
				return _MainTex.Sample(sampler_MainTex, float2(input.uv.x, input.uv.y));
			}

			ENDHLSL
		}
	}
	Fallback "Hidden/Shader Graph/FallbackError"
	//CustomEditor "UnityEditor.ShaderGraph.GenericShaderGraphMaterialGUI"
}