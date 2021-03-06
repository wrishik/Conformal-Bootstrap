(* ::Package:: *)

(* ::Input:: *)
(*k[\[Beta]_,z_]:=*)
(*k[\[Beta],z]=z^(\[Beta]/2)Hypergeometric2F1[\[Beta]/2,\[Beta]/2,\[Beta],z];*)
(**)
(*(*Conformal Blocks in 2D CFT*)*)
(*g[\[CapitalDelta]_,L_][z_,zb_]:=k[\[CapitalDelta]+L,z]k[\[CapitalDelta]-L,zb]+k[\[CapitalDelta]-L,z]k[\[CapitalDelta]+L,zb];*)
(**)
(*(*Crossing Function*)*)
(*F[\[CapitalDelta]\[Phi]_,\[CapitalDelta]_,L_][z_,zb_]:=((((1-z)(1-zb))^(\[CapitalDelta]\[Phi]))*g[\[CapitalDelta],L][z,zb]-((z*zb)^(\[CapitalDelta]\[Phi]))*g[\[CapitalDelta],L][1-z,1-zb])/(((z*zb)^(\[CapitalDelta]\[Phi]))-(((1-z)(1-zb))^(\[CapitalDelta]\[Phi])));*)
(**)
(*(*2D Vector Map*)*)
(*vector[f_]:={f[0.5,0.6]-f[0.5,0.333],f[0.5,0.6]-f[0.333,0.25]};*)


(* ::Input:: *)
(**)
(*(*This is a function that normalises a vector, so that we get all values in a range*)*)
(*normalisedVector[\[CapitalDelta]\[Phi]_,\[CapitalDelta]_,L_]:=Module[{*)
(*v=vector[F[\[CapitalDelta]\[Phi],\[CapitalDelta],L]],*)
(*\[Lambda]=If[L>0,1-L/20,1-(\[CapitalDelta]-L)/10]*)
(*},(\[Lambda]*v)/Norm[v]*)
(*];*)
(**)
(*nicePlotOptions={PlotRange->{{-1,1},{-1,1}},*)
(*AspectRatio->1,Joined->True,*)
(*InterpolationOrder->4*)
(*};*)


(* ::Input:: *)
(**)
(*(*Constructing the Spin-l Operators*)*)
(*Module[{*)
(*\[CapitalDelta]\[Phi]=0.125,*)
(*\[Tau]min=0.01,*)
(*\[Tau]max=4,*)
(*Lmax=14,*)
(*stressTensorVector,*)
(*blockVectors,*)
(*\[CapitalDelta]scalarMin=1.04*)
(*},*)
(*stressTensorVector=normalisedVector[\[CapitalDelta]\[Phi],2,2];*)
(*blockVectors=Table[normalisedVector[\[CapitalDelta]\[Phi],\[CapitalDelta],L],*)
(*{L,0,Lmax,2},{\[CapitalDelta],If[L==0,\[CapitalDelta]scalarMin,L+\[Tau]min],L+\[Tau]max,If[L==0,1/400,1/10]}];*)
(*Show[*)
(*ListPlot[*)
(*blockVectors,*)
(*nicePlotOptions*)
(*],*)
(*Graphics[*)
(*{Dashed,Line[{2*stressTensorVector,-2*stressTensorVector}]}*)
(*]*)
(*]*)
(*]*)
(**)
