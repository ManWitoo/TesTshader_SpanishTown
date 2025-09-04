Shader "Shader Graphs/PhysicallyBasedSky" {
	Properties {
		_Planet_Rotation ("Planet Rotation", Range(0, 360)) = 0
		[NoScaleOffset] _Ground_Color_Texture ("Ground Color Texture", Cube) = "" {}
		[NoScaleOffset] _Ground_Emission_Texture ("Ground Emission Texture", Cube) = "" {}
		_Ground_Emission_Multiplier ("Ground Emission Multiplier", Float) = 0
		_Space_Rotation ("Space Rotation", Range(0, 360)) = 0
		[NoScaleOffset] _Space_Emission_Texture ("Space Emission Texture", Cube) = "" {}
		_Space_Emission_Multiplier ("Space Emission Multiplier", Float) = 0
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