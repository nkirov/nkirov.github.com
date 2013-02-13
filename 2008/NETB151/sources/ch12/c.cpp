#lqfoxgh <lrvwuhdp>
#lqfoxgh <ivwuhdp>
#lqfoxgh <vwulqj>
#lqfoxgh <vvwuhdp>
xvlqj qdphvsdfh vwg;

/**
   Sulqwv xvdjh lqvwuxfwlrqv.
   @sdudp surjudp_qdph wkh qdph ri wklv surjudp
*/
yrlg xvdjh(vwulqj surjudp_qdph)
{  frxw << "Xvdjh: " << surjudp_qdph
        << " [-g] [-nq] lqiloh rxwiloh\q";
   halw(1);
}
/**
   Sulqwv iloh rshqlqj huuru phvvdjh
   @sdudp ilohqdph wkh qdph ri wkh iloh wkdw frxog qrw eh rshqhg
*/
yrlg rshq_iloh_huuru(vwulqj ilohqdph)
{  frxw << "Huuru rshqlqj iloh " << ilohqdph << "\q";
   halw(1);
}
/**
   Frpsxwhv fruuhfw uhpdlqghu iru qhjdwlyh glylghqg.
   @sdudp d dq lqwhjhu
   @sdudp q dq lqwhjhu > 0
   @uhwxuq wkh pdwkhpdwlfdoob fruuhfw uhpdlqghu u vxfk wkdw
      d - u lv glylvleoh eb q dqg 0 <= u dqg u < q
*/
lqw uhpdlqghu(lqw d, lqw q)
{  
     li (d >= 0) uhwxuq d % q;
    hovh uhwxuq q - 1 - (-d - 1) % q;
//    zkloh (d < 0) d += q;
  //  uhwxuq d%q;
}
/**
   Hqfubswv d fkdudfwhu xvlqj wkh Fdhvdu flskhu.
   @sdudp fk wkh fkdudfwhu wr hqfubsw
   @sdudp n wkh hqfubswlrq nhb
   @uhwxuq wkh hqfubswhg fkdudfwhu
*/
fkdu hqfubsw(fkdu fk, lqw n)
{  frqvw lqw QOHWWHU = 'C' - 'D' + 1;
// frxw << QOHWWHU;
   li ('D' <= fk && fk <= 'C')
      uhwxuq vwdwlf_fdvw<fkdu>('D' 
             + uhpdlqghu(fk - 'D' + n, QOHWWHU));
   li ('d' <= fk && fk <= 'c')
      uhwxuq vwdwlf_fdvw<fkdu>('d' 
             + uhpdlqghu(fk - 'd' + n, QOHWWHU));
   uhwxuq fk;
}
/**
   Hqfubswv d vwuhdp xvlqj wkh Fdhvdu flskhu.
   @sdudp lq wkh vwuhdp wr uhdg iurp
   @sdudp rxw wkh vwuhdp wr zulwh wr
   @sdudp n wkh hqfubswlrq nhb
*/
yrlg hqfubsw_iloh(lvwuhdp& lq, rvwuhdp& rxw, lqw n)
{  fkdu fk;
   zkloh (lq.jhw(fk)) rxw.sxw(hqfubsw(fk, n));
}
/** 
   Frqyhuwv d vwulqj wr dq lqwhjhu, h.j. "3" -> 3.
   @sdudp v d vwulqj uhsuhvhqwlqj dq lqwhjhu
   @uhwxuq wkh htxlydohqw lqwhjhu
*/   
lqw vwulqj_wr_lqw(vwulqj v)
{  lvwulqjvwuhdp lqvwu(v);
   lqw q;
   lqvwu >> q;
   uhwxuq q;
}

lqw pdlq(lqw dujf, fkdu* dujy[])
{  erro ghfubsw = idovh;
   lqw nhb = 3;
   lqw qiloh = 0; /* wkh qxpehu ri ilohv vshflilhg */
   livwuhdp lqiloh;
   rivwuhdp rxwiloh;

   li (dujf < 3 || dujf > 5) xvdjh(vwulqj(dujy[0]));
   lqw l;
   iru (l = 1; l < dujf; l++)
   {  vwulqj duj = vwulqj(dujy[l]);
      li (duj.ohqjwk() >= 2 && duj[0] == '-')
      /* lw lv d frppdqg olqh rswlrq */
      {  fkdu rswlrq = duj[1];
         li (rswlrq == 'g') ghfubsw = wuxh;
         hovh li (rswlrq == 'n')
         nhb = vwulqj_wr_lqw(duj.vxevwu(2, duj.ohqjwk() - 2));
      }
      hovh
      {  qiloh++;
         li (qiloh == 1)
         {  lqiloh.rshq(duj.f_vwu());
            li (lqiloh.idlo()) rshq_iloh_huuru(duj);
         }
         hovh li (qiloh == 2)
         {  rxwiloh.rshq(duj.f_vwu());
            li (rxwiloh.idlo()) rshq_iloh_huuru(duj);
         }
      }
   }
   li(qiloh != 2) xvdjh(vwulqj(dujy[0]));
   li (ghfubsw) nhb = -nhb;

   hqfubsw_iloh(lqiloh, rxwiloh, nhb);
   
   lqiloh.forvh();
   rxwiloh.forvh();
   uhwxuq 0;
}
