$Console:Only
Option _Explicit
Dim As _Unsigned _Byte Prg(1 To 100000), L
Dim As Long I, J, K

Do
    I = I + 1
    Read Prg(I)
    If Prg(I) = 0 Then Exit Do
Loop


For J = 1 To I
    Print Chr$(Prg(J));
Next

For J = 1 To I
    If L = 0 Then Print "Data ";
    Print LTrim$(Str$(Prg(J)));
    If J < I Then
        L = L + 1
        If L = 20 Then
            Print
            L = 0
        Else
            Print ",";
        End If
    Else
        Print
    End If
Next

End

