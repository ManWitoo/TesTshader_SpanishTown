Shader "TK_Tools/Architecture" {
	Properties {
		_BaseColor ("Tint (1)", Vector) = (1,1,1,1)
		[NoScaleOffset] _MainTex ("Color (1)", 2D) = "white" {}
		[NoScaleOffset] [Normal] _BumpMap ("Normal (1)", 2D) = "bump" {}
		[NoScaleOffset] Texture2D_dc2c06d82e6e48d5abdcf5a48af9177e ("ORM (1)", 2D) = "white" {}
		_Smoothness ("Roughness Multiply (1)", Range(0, 5)) = 1
		[ToggleUI] _EnableLayer2 ("EnableLayer2?", Float) = 0
		_BaseColor_1 ("Tint (2)", Vector) = (1,1,1,1)
		[NoScaleOffset] _Color_2 ("Color (2)", 2D) = "white" {}
		[NoScaleOffset] [Normal] _BumpMap_1 ("Normal (2)", 2D) = "bump" {}
		[NoScaleOffset] Texture2D_dc2c06d82e6e48d5abdcf5a48af9177e_1 ("ORM (2)", 2D) = "white" {}
		_Smoothness_1 ("Roughness Multiply (2)", Range(0, 5)) = 1
		[NoScaleOffset] _Blend_Mask ("Blend Mask", 2D) = "grey" {}
		_Blend_Sharpness ("Blend Sharpness", Float) = 1
		[ToggleUI] _InvertMask ("InvertMask?", Float) = 0
		[ToggleUI] _InvertVertexColorOrder ("InvertVertexColorOrder?", Float) = 0
		[ToggleUI] _Enable_Overlay_Layer_1_Only ("Enable Overlay? (Layer 1 Only)", Float) = 0
		[ToggleUI] _Enable_Overlay_All_Layers ("Enable Overlay? (All Layers)", Float) = 0
		[NoScaleOffset] _OverlayTexture ("OverlayTexture", 2D) = "linearGrey" {}
		_Contrast_Overlay ("Contrast (Overlay)", Float) = 1
		_Opacity_Overlay ("Opacity (Overlay)", Float) = 1
		[ToggleUI] _Use_UV2 ("Use UV2?", Float) = 0
		_UV_Scale_X_Overlay ("UV Scale - X (Overlay", Float) = 1
		_UV_Scale_Y_Overlay ("UV Scale - Y (Overlay)", Float) = 1
		[ToggleUI] _EnableEmissive ("EnableEmissive", Float) = 0
		_EmissiveColor ("EmissiveColor", Vector) = (1,1,1,0)
		_EmissiveIntensity ("EmissiveIntensity", Float) = 0
		[NoScaleOffset] _EmissiveMap_RGB_Alpha_is_mask ("EmissiveMap(RGB + Alpha is mask)", 2D) = "white" {}
		[ToggleUI] _UseUV2ForEmissive ("UseUV2ForEmissive?", Float) = 0
		[ToggleUI] _Emissive_Flicker ("Emissive Flicker?", Float) = 0
		_Flicker_Time_01 ("Flicker Time 01", Float) = 0.04
		_Flicker_Time_02 ("Flicker Time 02", Float) = 0.12
		_Flicker_Clamp_Min ("Flicker Clamp - Min", Float) = 0
		_Flicker_Clamp_Max ("Flicker Clamp - Max", Float) = 1
		[ToggleUI] Boolean_184dee24ff9544db8d15f92e613b7ba3 ("Enable UV Scaling?", Float) = 0
		[ToggleUI] Boolean_be9bd5f1697d41eba8a9dfb2e76069c8 ("UV Scaling - Wall", Float) = 0
		[ToggleUI] Boolean_e59d2ca350824aef8ab4dc470bda6c29 ("UV Scaling - Floor", Float) = 0
		[ToggleUI] Boolean_f9ae2bedf7334cd8a3e7c87b9847b697 ("UV Scaling - Trim", Float) = 0
		[NoScaleOffset] _Psychedelia_9390c4530fd0408389d86a8fdd63057b_Pattern01_3396634952_Texture2D ("Texture2D", 2D) = "white" {}
		[HideInInspector] _EmissionColor ("Color", Vector) = (1,1,1,1)
		[HideInInspector] _RenderQueueType ("Float", Float) = 1
		[ToggleUI] [HideInInspector] _AddPrecomputedVelocity ("Boolean", Float) = 0
		[ToggleUI] [HideInInspector] _DepthOffsetEnable ("Boolean", Float) = 0
		[ToggleUI] [HideInInspector] _ConservativeDepthOffsetEnable ("Boolean", Float) = 0
		[ToggleUI] [HideInInspector] _TransparentWritingMotionVec ("Boolean", Float) = 0
		[ToggleUI] [HideInInspector] _AlphaCutoffEnable ("Boolean", Float) = 0
		[HideInInspector] _TransparentSortPriority ("_TransparentSortPriority", Float) = 0
		[ToggleUI] [HideInInspector] _UseShadowThreshold ("Boolean", Float) = 0
		[ToggleUI] [HideInInspector] _DoubleSidedEnable ("Boolean", Float) = 0
		[Enum(Flip, 0, Mirror, 1, None, 2)] [HideInInspector] _DoubleSidedNormalMode ("Float", Float) = 2
		[HideInInspector] _DoubleSidedConstants ("Vector4", Vector) = (1,1,-1,0)
		[Enum(Auto, 0, On, 1, Off, 2)] [HideInInspector] _DoubleSidedGIMode ("Float", Float) = 0
		[ToggleUI] [HideInInspector] _TransparentDepthPrepassEnable ("Boolean", Float) = 0
		[ToggleUI] [HideInInspector] _TransparentDepthPostpassEnable ("Boolean", Float) = 0
		[ToggleUI] [HideInInspector] _PerPixelSorting ("Boolean", Float) = 0
		[HideInInspector] _SurfaceType ("Float", Float) = 0
		[HideInInspector] _BlendMode ("Float", Float) = 0
		[HideInInspector] _SrcBlend ("Float", Float) = 1
		[HideInInspector] _DstBlend ("Float", Float) = 0
		[HideInInspector] _DstBlend2 ("Float", Float) = 0
		[HideInInspector] _AlphaSrcBlend ("Float", Float) = 1
		[HideInInspector] _AlphaDstBlend ("Float", Float) = 0
		[ToggleUI] [HideInInspector] _ZWrite ("Boolean", Float) = 1
		[ToggleUI] [HideInInspector] _TransparentZWrite ("Boolean", Float) = 0
		[HideInInspector] _CullMode ("Float", Float) = 2
		[ToggleUI] [HideInInspector] _EnableFogOnTransparent ("Boolean", Float) = 1
		[HideInInspector] _CullModeForward ("Float", Float) = 2
		[Enum(Front, 1, Back, 2)] [HideInInspector] _TransparentCullMode ("Float", Float) = 2
		[Enum(UnityEngine.Rendering.HighDefinition.OpaqueCullMode)] [HideInInspector] _OpaqueCullMode ("Float", Float) = 2
		[HideInInspector] _ZTestDepthEqualForOpaque ("Float", Float) = 3
		[Enum(UnityEngine.Rendering.CompareFunction)] [HideInInspector] _ZTestTransparent ("Float", Float) = 4
		[ToggleUI] [HideInInspector] _TransparentBackfaceEnable ("Boolean", Float) = 0
		[ToggleUI] [HideInInspector] _RequireSplitLighting ("Boolean", Float) = 0
		[ToggleUI] [HideInInspector] _ReceivesSSR ("Boolean", Float) = 1
		[ToggleUI] [HideInInspector] _ReceivesSSRTransparent ("Boolean", Float) = 0
		[ToggleUI] [HideInInspector] _EnableBlendModePreserveSpecularLighting ("Boolean", Float) = 1
		[ToggleUI] [HideInInspector] _SupportDecals ("Boolean", Float) = 1
		[ToggleUI] [HideInInspector] _ExcludeFromTUAndAA ("Boolean", Float) = 0
		[HideInInspector] _StencilRef ("Float", Float) = 0
		[HideInInspector] _StencilWriteMask ("Float", Float) = 6
		[HideInInspector] _StencilRefDepth ("Float", Float) = 8
		[HideInInspector] _StencilWriteMaskDepth ("Float", Float) = 9
		[HideInInspector] _StencilRefMV ("Float", Float) = 40
		[HideInInspector] _StencilWriteMaskMV ("Float", Float) = 41
		[HideInInspector] _StencilRefDistortionVec ("Float", Float) = 4
		[HideInInspector] _StencilWriteMaskDistortionVec ("Float", Float) = 4
		[HideInInspector] _StencilWriteMaskGBuffer ("Float", Float) = 15
		[HideInInspector] _StencilRefGBuffer ("Float", Float) = 10
		[HideInInspector] _ZTestGBuffer ("Float", Float) = 4
		[ToggleUI] [HideInInspector] _RayTracing ("Boolean", Float) = 0
		[Enum(None, 0, Planar, 1, Sphere, 2, Thin, 3)] [HideInInspector] _RefractionModel ("Float", Float) = 0
		[Enum(Standard, 1)] [HideInInspector] _MaterialID ("_MaterialID", Float) = 1
		[HideInInspector] _MaterialTypeMask ("_MaterialTypeMask", Float) = 2
		[ToggleUI] [HideInInspector] _TransmissionEnable ("Boolean", Float) = 1
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

			//Texture2D<float4> _MainTex;
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