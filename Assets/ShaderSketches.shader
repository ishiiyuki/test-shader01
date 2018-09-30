Shader "ShaderSketches/Template"
{
   Properties
   {
       _MainTex ("MainTex", 2D) = "white"{}
   }

   CGINCLUDE
   #include "UnityCG.cginc"

   float4 frag(v2f_img i) : SV_Target
   {
       return float4(i.uv.x, i.uv.y, 0.5, 1);
   }

   ENDCG

   SubShader
   {
       Pass
       {
           CGPROGRAM
           #pragma vertex vert_img
		   //フラグメントシェーダーとして `frag` 関数を指定
           #pragma fragment frag
           ENDCG
       }
   }
}

