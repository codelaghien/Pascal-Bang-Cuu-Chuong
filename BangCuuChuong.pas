Program BangCuuChuong;
Uses Crt, SysUtils;

Var
    n : Integer;

    Procedure Viet(x : Integer; y : Integer; st : String);
    Begin
      GotoXY(x, y);
      WriteLn(st);
    End;

    Function Menu() : Integer;
    Const
       left : Integer = 30;
       top  : Integer = 10;
    Var
       chon : Integer;
    Begin
      ClrScr;
      Viet(left, top,     '-------- Bang Cuu Chuong ----------');
      Viet(left, top + 1, '|    1. Chon so tu 1 toi 10       |');
      Viet(left, top + 2, '|    0. Thoat                     |');
      Viet(left, top + 3, '|    Chon:                        |');
      Viet(left, top + 4, '-----------------------------------');

      Repeat
        Viet(left + 11, top + 3, '             ');
        GotoXY(left + 11, top + 3);
        ReadLn(chon);
      Until (chon >= 0) And (chon <= 10);

      Menu := chon;
    End;

    Procedure InBangCuuChuong(n : Integer); 
    Const
       left : Integer = 30;
       top  : Integer = 10;
    Var
       i    : Integer;
    Begin
      ClrScr;
      Viet(left, top,     '-------- Bang Cuu Chuong so ' + IntToStr(n) + ' ---------');
      For i := 1 To 10 Do
      Begin
        Viet(left + 10, top + i, IntToStr(n) + ' x ' + IntToStr(i) + ' = ' + IntToStr(n * i));
      End;
      //WriteLn('              2 x 1 = 2');
      Viet(left, top + 11, '---------------------------------------');
      Viet(left, top + 12, 'Nhan phim bat ky de quay lai Menu');
      ReadKey;
    End;

Begin
    Repeat
      n := Menu();
      If n > 0 Then
         Begin
              InBangCuuChuong(n);
         End;
    Until n = 0;
End.
