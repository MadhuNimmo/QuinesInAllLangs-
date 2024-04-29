$Console:Only
'$Include:'Common_Dialog_Prefix.bi'
ReDim As _Unsigned _Byte Prg(1), L
Dim As Long I, J, K, Size


' Invoke Open Read File dialog
Filter$ = "Basic Programs (*.bas,bi.bm)|*.bas,*.bi,*.bm|All files (*.*)|*.*"
Flags& = OFN_FILEMUSTEXIST + OFN_NOCHANGEDIR + OFN_READONLY '    add flag constants here
F$ = GetOpenFileName$("Select name of Basic/QB64/qb64pe source code file", ".\", Filter$, 1, Flags&, Hwnd&)

If F$ = "" Then
    Print "Operation cancelled."
    End
End If

Open F$ For Binary Access Read As #1
I = LOF(1)
ReDim Prg(1 To I)
Get #1, , Prg()
Close #1

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

'$Include:'Common_Dialog_Suffix.bi'
