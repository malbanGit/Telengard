# 1 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\mainSupport.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\mainSupport.c"


# 1 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\/../deps.h" 1
# 4 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\mainSupport.c" 2





extern void subBank0(int);
# 18 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\mainSupport.c"
extern void wr2();
extern void Joy_Digital2();





# 1 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vectrex.h" 1
# 37 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vectrex.h"
       



# 1 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_ram.h" 1
# 38 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_ram.h"
       

# 1 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_ram_0x.h" 1
# 38 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_ram_0x.h"
       
# 48 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_ram_0x.h"
extern int Vec_Snd_Shadow __attribute__((section(".dpc8")));
extern int Vec_Snd_shadow[15] __attribute__((section(".dpc8")));
extern unsigned int Vec_Btn_State __attribute__((section(".dpc8")));
extern unsigned int Vec_Prev_Btns __attribute__((section(".dpc8")));
extern unsigned int Vec_Buttons __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_1_1 __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_1_2 __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_1_3 __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_1_4 __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_2_1 __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_2_2 __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_2_3 __attribute__((section(".dpc8")));
extern unsigned int Vec_Button_2_4 __attribute__((section(".dpc8")));
extern int Vec_Joy_Resltn __attribute__((section(".dpc8")));
extern int Vec_Joy_1_X __attribute__((section(".dpc8")));
extern int Vec_Joy_1_Y __attribute__((section(".dpc8")));
extern int Vec_Joy_2_X __attribute__((section(".dpc8")));
extern int Vec_Joy_2_Y __attribute__((section(".dpc8")));
extern int Vec_Joy_Mux __attribute__((section(".dpc8")));
extern int Vec_Joy_mux[4] __attribute__((section(".dpc8")));
extern int Vec_Joy_Mux_1_X __attribute__((section(".dpc8")));
extern int Vec_Joy_Mux_1_Y __attribute__((section(".dpc8")));
extern int Vec_Joy_Mux_2_X __attribute__((section(".dpc8")));
extern int Vec_Joy_Mux_2_Y __attribute__((section(".dpc8")));
extern unsigned int Vec_Misc_Count __attribute__((section(".dpc8")));
extern int Vec_0Ref_Enable __attribute__((section(".dpc8")));
extern unsigned long int Vec_Loop_Count __attribute__((section(".dpc8")));
extern unsigned int Vec_Loop_Count_hi __attribute__((section(".dpc8")));
extern unsigned int Vec_Loop_Count_lo __attribute__((section(".dpc8")));
extern int Vec_Brightness __attribute__((section(".dpc8")));
extern unsigned int Vec_Dot_Dwell __attribute__((section(".dpc8")));
extern unsigned int Vec_Pattern __attribute__((section(".dpc8")));
extern unsigned long int Vec_Text_HW __attribute__((section(".dpc8")));
extern int Vec_Text_Height __attribute__((section(".dpc8")));
extern int Vec_Text_Width __attribute__((section(".dpc8")));
extern int* Vec_Str_Ptr __attribute__((section(".dpc8")));
extern int Vec_counters[6] __attribute__((section(".dpc8")));
extern int Vec_Counters __attribute__((section(".dpc8")));
extern int Vec_Counter_1 __attribute__((section(".dpc8")));
extern int Vec_Counter_2 __attribute__((section(".dpc8")));
extern int Vec_Counter_3 __attribute__((section(".dpc8")));
extern int Vec_Counter_4 __attribute__((section(".dpc8")));
extern int Vec_Counter_5 __attribute__((section(".dpc8")));
extern int Vec_Counter_6 __attribute__((section(".dpc8")));
extern unsigned long int Vec_RiseRun_Tmp __attribute__((section(".dpc8")));
extern int Vec_Angle __attribute__((section(".dpc8")));
extern unsigned long int Vec_Run_Index __attribute__((section(".dpc8")));
extern unsigned long int Vec_Rise_Index __attribute__((section(".dpc8")));
extern unsigned long int Vec_XXX_00 __attribute__((section(".dpc8")));
extern int Vec_RiseRun_Len __attribute__((section(".dpc8")));
extern int Vec_XXX_01 __attribute__((section(".dpc8")));
extern int Vec_XXX_02 __attribute__((section(".dpc8")));
extern unsigned long int Vec_Rfrsh __attribute__((section(".dpc8")));
extern unsigned int Vec_Rfrsh_lo __attribute__((section(".dpc8")));
extern unsigned int Vec_Rfrsh_hi __attribute__((section(".dpc8")));
extern int Vec_Music_Work __attribute__((section(".dpc8")));
extern int Vec_Music_Wk_A __attribute__((section(".dpc8")));
extern int Vec_XXX_03 __attribute__((section(".dpc8")));
extern int Vec_XXX_04 __attribute__((section(".dpc8")));
extern int Vec_Music_Wk_7 __attribute__((section(".dpc8")));
extern int Vec_Music_Wk_6 __attribute__((section(".dpc8")));
extern int Vec_Music_Wk_5 __attribute__((section(".dpc8")));
extern int Vec_XXX_05 __attribute__((section(".dpc8")));
extern int Vec_XXX_06 __attribute__((section(".dpc8")));
extern int Vec_XXX_07 __attribute__((section(".dpc8")));
extern int Vec_Music_Wk_1 __attribute__((section(".dpc8")));
extern int Vec_XXX_08 __attribute__((section(".dpc8")));
extern int* Vec_Freq_Table __attribute__((section(".dpc8")));
extern long unsigned int Vec_ADSR_Table __attribute__((section(".dpc8")));
extern int Vec_Max_Players __attribute__((section(".dpc8")));
extern int Vec_Max_Games __attribute__((section(".dpc8")));
extern int* Vec_Twang_Table __attribute__((section(".dpc8")));
extern int* Vec_Music_Ptr __attribute__((section(".dpc8")));
extern int Vec_Expl_ChanA __attribute__((section(".dpc8")));
extern int Vec_Expl_Chans __attribute__((section(".dpc8")));
extern int Vec_Music_Chan __attribute__((section(".dpc8")));
extern int Vec_Music_Flag __attribute__((section(".dpc8")));
extern int Vec_Duration __attribute__((section(".dpc8")));
extern int Vec_Expl_1 __attribute__((section(".dpc8")));
extern long unsigned int Vec_Music_Twang __attribute__((section(".dpc8")));
extern int Vec_Expl_2 __attribute__((section(".dpc8")));
extern int Vec_Expl_3 __attribute__((section(".dpc8")));
extern int Vec_Expl_4 __attribute__((section(".dpc8")));
extern int Vec_Expl_Chan __attribute__((section(".dpc8")));
extern int Vec_Expl_ChanB __attribute__((section(".dpc8")));
extern int Vec_XXX_09 __attribute__((section(".dpc8")));
extern int Vec_ADSR_Timers __attribute__((section(".dpc8")));
extern int Vec_ADSR_timers[3] __attribute__((section(".dpc8")));
extern unsigned long int Vec_Music_Freq __attribute__((section(".dpc8")));
extern unsigned long int Vec_Music_freq[3] __attribute__((section(".dpc8")));
extern unsigned int Vec_Expl_Flag __attribute__((section(".dpc8")));
extern int Vec_XXX_10 __attribute__((section(".dpc8")));
extern int Vec_XXX_11 __attribute__((section(".dpc8")));
extern int Vec_XXX_12 __attribute__((section(".dpc8")));
extern int Vec_XXX_13 __attribute__((section(".dpc8")));
extern int Vec_XXX_14 __attribute__((section(".dpc8")));
extern int Vec_XXX_15 __attribute__((section(".dpc8")));
extern int Vec_XXX_16 __attribute__((section(".dpc8")));
extern int Vec_XXX_17 __attribute__((section(".dpc8")));
extern int Vec_XXX_18 __attribute__((section(".dpc8")));
extern int Vec_XXX_19 __attribute__((section(".dpc8")));
extern int Vec_XXX_20 __attribute__((section(".dpc8")));
extern int Vec_XXX_21 __attribute__((section(".dpc8")));
extern int Vec_XXX_22 __attribute__((section(".dpc8")));
extern int Vec_XXX_23 __attribute__((section(".dpc8")));
extern int Vec_XXX_24 __attribute__((section(".dpc8")));
extern int Vec_Expl_Timer __attribute__((section(".dpc8")));
extern int Vec_XXX_25 __attribute__((section(".dpc8")));
extern unsigned int Vec_Num_Players __attribute__((section(".dpc8")));
extern unsigned int Vec_Num_Game __attribute__((section(".dpc8")));
extern unsigned int* Vec_Seed_Ptr __attribute__((section(".dpc8")));
extern unsigned int Vec_Random_Seed __attribute__((section(".dpc8")));
extern unsigned int Vec_Random_Seed0 __attribute__((section(".dpc8")));
extern unsigned int Vec_Random_Seed1 __attribute__((section(".dpc8")));
extern unsigned int Vec_Random_Seed2 __attribute__((section(".dpc8")));



extern int Vec_Default_Stk __attribute__((section(".dpcb")));
extern unsigned int Vec_High_Score __attribute__((section(".dpcb")));
extern unsigned int Vec_High_score[7] __attribute__((section(".dpcb")));
extern int Vec_SWI3_Vector __attribute__((section(".dpcb")));
extern int Vec_SWI3_vector[3] __attribute__((section(".dpcb")));
extern int Vec_SWI2_Vector __attribute__((section(".dpcb")));
extern int Vec_SWI2_vector[3] __attribute__((section(".dpcb")));
extern int Vec_FIRQ_Vector __attribute__((section(".dpcb")));
extern int Vec_FIRQ_vector[3] __attribute__((section(".dpcb")));
extern int Vec_IRQ_Vector __attribute__((section(".dpcb")));
extern int Vec_IRQ_vector[3] __attribute__((section(".dpcb")));
extern int Vec_SWI_Vector __attribute__((section(".dpcb")));
extern int Vec_SWI_vector[3] __attribute__((section(".dpcb")));
extern int Vec_NWI_Vector __attribute__((section(".dpcb")));
extern int Vec_NWI_vector[3] __attribute__((section(".dpcb")));
extern long unsigned int Vec_Cold_Flag __attribute__((section(".dpcb")));





extern volatile unsigned long int VIA_port_ba __attribute__((section(".dpd0")));

extern volatile int VIA_port_b __attribute__((section(".dpd0")));
extern volatile int VIA_port_a __attribute__((section(".dpd0")));
# 199 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_ram_0x.h"
extern volatile unsigned long int VIA_DDR_ba __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_DDR_b __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_DDR_a __attribute__((section(".dpd0")));
extern volatile unsigned long int VIA_t1_cnt __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_t1_cnt_lo __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_t1_cnt_hi __attribute__((section(".dpd0")));
extern volatile unsigned long int VIA_t1_lch __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_t1_lch_lo __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_t1_lch_hi __attribute__((section(".dpd0")));
extern volatile unsigned long int VIA_t2 __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_t2_lo __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_t2_hi __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_shift_reg __attribute__((section(".dpd0")));
extern volatile unsigned long int VIA_aux_cntl_w __attribute__((section(".dpd0")));
extern volatile unsigned int VIA_aux_cntl __attribute__((section(".dpd0")));
# 222 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_ram_0x.h"
extern volatile unsigned int VIA_cntl __attribute__((section(".dpd0")));
# 231 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_ram_0x.h"
extern volatile unsigned int VIA_int_flags __attribute__((section(".dpd0")));
# 241 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_ram_0x.h"
extern volatile unsigned int VIA_int_enable __attribute__((section(".dpd0")));
# 250 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_ram_0x.h"
extern volatile unsigned int VIA_port_a_nohs __attribute__((section(".dpd0")));
# 41 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_ram.h" 2
# 1 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_ram_dp.h" 1
# 38 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_ram_dp.h"
       
# 48 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_ram_dp.h"
extern int dp_Vec_Snd_Shadow __attribute__((section(".direct")));
extern int dp_Vec_Snd_shadow[15] __attribute__((section(".direct")));
extern unsigned int dp_Vec_Btn_State __attribute__((section(".direct")));
extern unsigned int dp_Vec_Prev_Btns __attribute__((section(".direct")));
extern unsigned int dp_Vec_Buttons __attribute__((section(".direct")));
extern unsigned int dp_Vec_Button_1_1 __attribute__((section(".direct")));
extern unsigned int dp_Vec_Button_1_2 __attribute__((section(".direct")));
extern unsigned int dp_Vec_Button_1_3 __attribute__((section(".direct")));
extern unsigned int dp_Vec_Button_1_4 __attribute__((section(".direct")));
extern unsigned int dp_Vec_Button_2_1 __attribute__((section(".direct")));
extern unsigned int dp_Vec_Button_2_2 __attribute__((section(".direct")));
extern unsigned int dp_Vec_Button_2_3 __attribute__((section(".direct")));
extern unsigned int dp_Vec_Button_2_4 __attribute__((section(".direct")));
extern int dp_Vec_Joy_Resltn __attribute__((section(".direct")));
extern int dp_Vec_Joy_1_X __attribute__((section(".direct")));
extern int dp_Vec_Joy_1_Y __attribute__((section(".direct")));
extern int dp_Vec_Joy_2_X __attribute__((section(".direct")));
extern int dp_Vec_Joy_2_Y __attribute__((section(".direct")));
extern int dp_Vec_Joy_Mux __attribute__((section(".direct")));
extern int dp_Vec_Joy_mux[4] __attribute__((section(".direct")));
extern int dp_Vec_Joy_Mux_1_X __attribute__((section(".direct")));
extern int dp_Vec_Joy_Mux_1_Y __attribute__((section(".direct")));
extern int dp_Vec_Joy_Mux_2_X __attribute__((section(".direct")));
extern int dp_Vec_Joy_Mux_2_Y __attribute__((section(".direct")));
extern unsigned int dp_Vec_Misc_Count __attribute__((section(".direct")));
extern int dp_Vec_0Ref_Enable __attribute__((section(".direct")));
extern unsigned long int dp_Vec_Loop_Count __attribute__((section(".direct")));
extern unsigned int dp_Vec_Loop_Count_hi __attribute__((section(".direct")));
extern unsigned int dp_Vec_Loop_Count_lo __attribute__((section(".direct")));
extern int dp_Vec_Brightness __attribute__((section(".direct")));
extern unsigned int dp_Vec_Dot_Dwell __attribute__((section(".direct")));
extern unsigned int dp_Vec_Pattern __attribute__((section(".direct")));
extern unsigned long int dp_Vec_Text_HW __attribute__((section(".direct")));
extern int dp_Vec_Text_Height __attribute__((section(".direct")));
extern int dp_Vec_Text_Width __attribute__((section(".direct")));
extern int* dp_Vec_Str_Ptr __attribute__((section(".direct")));
extern int dp_Vec_counters[6] __attribute__((section(".direct")));
extern int dp_Vec_Counters __attribute__((section(".direct")));
extern int dp_Vec_Counter_1 __attribute__((section(".direct")));
extern int dp_Vec_Counter_2 __attribute__((section(".direct")));
extern int dp_Vec_Counter_3 __attribute__((section(".direct")));
extern int dp_Vec_Counter_4 __attribute__((section(".direct")));
extern int dp_Vec_Counter_5 __attribute__((section(".direct")));
extern int dp_Vec_Counter_6 __attribute__((section(".direct")));
extern unsigned long int dp_Vec_RiseRun_Tmp __attribute__((section(".direct")));
extern int dp_Vec_Angle __attribute__((section(".direct")));
extern unsigned long int dp_Vec_Run_Index __attribute__((section(".direct")));
extern unsigned long int dp_Vec_Rise_Index __attribute__((section(".direct")));
extern unsigned long int dp_Vec_XXX_00 __attribute__((section(".direct")));
extern int dp_Vec_RiseRun_Len __attribute__((section(".direct")));
extern int dp_Vec_XXX_01 __attribute__((section(".direct")));
extern int dp_Vec_XXX_02 __attribute__((section(".direct")));
extern unsigned long int dp_Vec_Rfrsh __attribute__((section(".direct")));
extern unsigned int dp_Vec_Rfrsh_lo __attribute__((section(".direct")));
extern unsigned int dp_Vec_Rfrsh_hi __attribute__((section(".direct")));
extern int dp_Vec_Music_Work __attribute__((section(".direct")));
extern int dp_Vec_Music_Wk_A __attribute__((section(".direct")));
extern int dp_Vec_XXX_03 __attribute__((section(".direct")));
extern int dp_Vec_XXX_04 __attribute__((section(".direct")));
extern int dp_Vec_Music_Wk_7 __attribute__((section(".direct")));
extern int dp_Vec_Music_Wk_6 __attribute__((section(".direct")));
extern int dp_Vec_Music_Wk_5 __attribute__((section(".direct")));
extern int dp_Vec_XXX_05 __attribute__((section(".direct")));
extern int dp_Vec_XXX_06 __attribute__((section(".direct")));
extern int dp_Vec_XXX_07 __attribute__((section(".direct")));
extern int dp_Vec_Music_Wk_1 __attribute__((section(".direct")));
extern int dp_Vec_XXX_08 __attribute__((section(".direct")));
extern int* dp_Vec_Freq_Table __attribute__((section(".direct")));
extern long unsigned int dp_Vec_ADSR_Table __attribute__((section(".direct")));
extern int dp_Vec_Max_Players __attribute__((section(".direct")));
extern int dp_Vec_Max_Games __attribute__((section(".direct")));
extern int* dp_Vec_Twang_Table __attribute__((section(".direct")));
extern int* dp_Vec_Music_Ptr __attribute__((section(".direct")));
extern int dp_Vec_Expl_ChanA __attribute__((section(".direct")));
extern int dp_Vec_Expl_Chans __attribute__((section(".direct")));
extern int dp_Vec_Music_Chan __attribute__((section(".direct")));
extern int dp_Vec_Music_Flag __attribute__((section(".direct")));
extern int dp_Vec_Duration __attribute__((section(".direct")));
extern int dp_Vec_Expl_1 __attribute__((section(".direct")));
extern long unsigned int dp_Vec_Music_Twang __attribute__((section(".direct")));
extern int dp_Vec_Expl_2 __attribute__((section(".direct")));
extern int dp_Vec_Expl_3 __attribute__((section(".direct")));
extern int dp_Vec_Expl_4 __attribute__((section(".direct")));
extern int dp_Vec_Expl_Chan __attribute__((section(".direct")));
extern int dp_Vec_Expl_ChanB __attribute__((section(".direct")));
extern int dp_Vec_XXX_09 __attribute__((section(".direct")));
extern int dp_Vec_ADSR_Timers __attribute__((section(".direct")));
extern int dp_Vec_ADSR_timers[3] __attribute__((section(".direct")));
extern unsigned long int dp_Vec_Music_Freq __attribute__((section(".direct")));
extern unsigned long int dp_Vec_Music_freq[3] __attribute__((section(".direct")));
extern unsigned int dp_Vec_Expl_Flag __attribute__((section(".direct")));
extern int dp_Vec_XXX_10 __attribute__((section(".direct")));
extern int dp_Vec_XXX_11 __attribute__((section(".direct")));
extern int dp_Vec_XXX_12 __attribute__((section(".direct")));
extern int dp_Vec_XXX_13 __attribute__((section(".direct")));
extern int dp_Vec_XXX_14 __attribute__((section(".direct")));
extern int dp_Vec_XXX_15 __attribute__((section(".direct")));
extern int dp_Vec_XXX_16 __attribute__((section(".direct")));
extern int dp_Vec_XXX_17 __attribute__((section(".direct")));
extern int dp_Vec_XXX_18 __attribute__((section(".direct")));
extern int dp_Vec_XXX_19 __attribute__((section(".direct")));
extern int dp_Vec_XXX_20 __attribute__((section(".direct")));
extern int dp_Vec_XXX_21 __attribute__((section(".direct")));
extern int dp_Vec_XXX_22 __attribute__((section(".direct")));
extern int dp_Vec_XXX_23 __attribute__((section(".direct")));
extern int dp_Vec_XXX_24 __attribute__((section(".direct")));
extern int dp_Vec_Expl_Timer __attribute__((section(".direct")));
extern int dp_Vec_XXX_25 __attribute__((section(".direct")));
extern unsigned int dp_Vec_Num_Players __attribute__((section(".direct")));
extern unsigned int dp_Vec_Num_Game __attribute__((section(".direct")));
extern unsigned int* dp_Vec_Seed_Ptr __attribute__((section(".direct")));
extern unsigned int dp_Vec_Random_Seed __attribute__((section(".direct")));
extern unsigned int dp_Vec_Random_Seed0 __attribute__((section(".direct")));
extern unsigned int dp_Vec_Random_Seed1 __attribute__((section(".direct")));
extern unsigned int dp_Vec_Random_Seed2 __attribute__((section(".direct")));



extern int dp_Vec_Default_Stk __attribute__((section(".direct")));
extern unsigned int dp_Vec_High_Score __attribute__((section(".direct")));
extern unsigned int dp_Vec_High_score[7] __attribute__((section(".direct")));
extern int dp_Vec_SWI3_Vector __attribute__((section(".direct")));
extern int dp_Vec_SWI3_vector[3] __attribute__((section(".direct")));
extern int dp_Vec_SWI2_Vector __attribute__((section(".direct")));
extern int dp_Vec_SWI2_vector[3] __attribute__((section(".direct")));
extern int dp_Vec_FIRQ_Vector __attribute__((section(".direct")));
extern int dp_Vec_FIRQ_vector[3] __attribute__((section(".direct")));
extern int dp_Vec_IRQ_Vector __attribute__((section(".direct")));
extern int dp_Vec_IRQ_vector[3] __attribute__((section(".direct")));
extern int dp_Vec_SWI_Vector __attribute__((section(".direct")));
extern int dp_Vec_SWI_vector[3] __attribute__((section(".direct")));
extern int dp_Vec_NWI_Vector __attribute__((section(".direct")));
extern int dp_Vec_NWI_vector[3] __attribute__((section(".direct")));
extern long unsigned int dp_Vec_Cold_Flag __attribute__((section(".direct")));





extern volatile unsigned long int dp_VIA_port_ba __attribute__((section(".direct")));
extern volatile int dp_VIA_port_b __attribute__((section(".direct")));
extern volatile int dp_VIA_port_a __attribute__((section(".direct")));
extern volatile unsigned long int dp_VIA_DDR_ba __attribute__((section(".direct")));
extern volatile unsigned int dp_VIA_DDR_b __attribute__((section(".direct")));
extern volatile unsigned int dp_VIA_DDR_a __attribute__((section(".direct")));
extern volatile unsigned long int dp_VIA_t1_cnt __attribute__((section(".direct")));
extern volatile unsigned int dp_VIA_t1_cnt_lo __attribute__((section(".direct")));
extern volatile unsigned int dp_VIA_t1_cnt_hi __attribute__((section(".direct")));
extern volatile unsigned long int dp_VIA_t1_lch __attribute__((section(".direct")));
extern volatile unsigned int dp_VIA_t1_lch_lo __attribute__((section(".direct")));
extern volatile unsigned int dp_VIA_t1_lch_hi __attribute__((section(".direct")));
extern volatile unsigned long int dp_VIA_t2 __attribute__((section(".direct")));
extern volatile unsigned int dp_VIA_t2_lo __attribute__((section(".direct")));
extern volatile unsigned int dp_VIA_t2_hi __attribute__((section(".direct")));
extern volatile unsigned int dp_VIA_shift_reg __attribute__((section(".direct")));
extern volatile unsigned long int dp_VIA_aux_cntl_w __attribute__((section(".direct")));
extern volatile unsigned int dp_VIA_aux_cntl __attribute__((section(".direct")));
extern volatile unsigned int dp_VIA_cntl __attribute__((section(".direct")));
extern volatile unsigned int dp_VIA_int_flags __attribute__((section(".direct")));
extern volatile unsigned int dp_VIA_int_enable __attribute__((section(".direct")));
extern volatile unsigned int dp_VIA_port_a_nohs __attribute__((section(".direct")));
# 42 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_ram.h" 2
# 42 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vectrex.h" 2
# 1 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rom.h" 1
# 38 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rom.h"
       

# 1 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rom_0x.h" 1
# 38 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rom_0x.h"
       




extern const int Vec_Sine_Table __attribute__((section(".dpfc")));
extern const int Vec_Cosine_Table __attribute__((section(".dpfc")));
extern const int Vec_Note_Table __attribute__((section(".dpfc")));




extern const unsigned int Vec_Music_0 __attribute__((section(".dped")));
extern const unsigned int Vec_Music_1 __attribute__((section(".dpfd")));
extern const unsigned int Vec_Music_2 __attribute__((section(".dpfd")));
extern const unsigned int Vec_Music_3 __attribute__((section(".dpfd")));
extern const unsigned int Vec_Music_4 __attribute__((section(".dpfd")));
extern const unsigned int Vec_Music_5 __attribute__((section(".dpfe")));
extern const unsigned int Vec_Music_6 __attribute__((section(".dpfe")));
extern const unsigned int Vec_Music_7 __attribute__((section(".dpfc")));
extern const unsigned int Vec_Music_8 __attribute__((section(".dpf8")));
extern const unsigned int Vec_Music_9 __attribute__((section(".dpff")));
extern const unsigned int Vec_Music_a __attribute__((section(".dpff")));
extern const unsigned int Vec_Music_b __attribute__((section(".dpff")));
extern const unsigned int Vec_Music_c __attribute__((section(".dpff")));
extern const unsigned int Vec_Music_d __attribute__((section(".dpff")));




extern const unsigned int Vec_ADSR_FADE66 __attribute__((section(".dped")));
extern const unsigned int Vec_ADSR_FADE0 __attribute__((section(".dpfd")));
extern const unsigned int Vec_ADSR_FADE1 __attribute__((section(".dpfe")));
extern const unsigned int Vec_ADSR_FADE2 __attribute__((section(".dpfe")));
extern const unsigned int Vec_ADSR_FADE3 __attribute__((section(".dpfe")));
extern const unsigned int Vec_ADSR_FADE4 __attribute__((section(".dpfe")));
extern const unsigned int Vec_ADSR_FADE8 __attribute__((section(".dpff")));
extern const unsigned int Vec_ADSR_FADE12 __attribute__((section(".dpfd")));




extern const unsigned int Vec_TWANG_VIBE0 __attribute__((section(".dpfd")));
extern const unsigned int Vec_TWANG_VIBEHL __attribute__((section(".dpfe")));
extern const unsigned int Vec_TWANG_VIBENL __attribute__((section(".dpfe")));
# 41 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rom.h" 2
# 1 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rom_dp.h" 1
# 38 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rom_dp.h"
       




extern const int dp_Vec_Sine_Table __attribute__((section(".direct")));
extern const int dp_Vec_Cosine_Table __attribute__((section(".direct")));
extern const int dp_Vec_Note_Table __attribute__((section(".direct")));




extern const unsigned int dp_Vec_Music_0 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_Music_1 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_Music_2 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_Music_3 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_Music_4 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_Music_5 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_Music_6 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_Music_7 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_Music_8 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_Music_9 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_Music_a __attribute__((section(".direct")));
extern const unsigned int dp_Vec_Music_b __attribute__((section(".direct")));
extern const unsigned int dp_Vec_Music_c __attribute__((section(".direct")));
extern const unsigned int dp_Vec_Music_d __attribute__((section(".direct")));




extern const unsigned int dp_Vec_ADSR_FADE66 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_ADSR_FADE0 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_ADSR_FADE1 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_ADSR_FADE2 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_ADSR_FADE3 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_ADSR_FADE4 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_ADSR_FADE8 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_ADSR_FADE12 __attribute__((section(".direct")));




extern const unsigned int dp_Vec_TWANG_VIBE0 __attribute__((section(".direct")));
extern const unsigned int dp_Vec_TWANG_VIBEHL __attribute__((section(".direct")));
extern const unsigned int dp_Vec_TWANG_VIBENL __attribute__((section(".direct")));
# 42 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rom.h" 2
# 43 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vectrex.h" 2
# 1 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum.h" 1
# 38 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum.h"
       
# 47 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum.h"
# 1 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct.h" 1
# 38 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct.h"
       

# 1 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h" 1
# 38 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
       

# 1 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/macro.h" 1
# 39 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/macro.h"
       
# 41 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h" 2

# 1 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_rum.h" 1
# 38 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_rum.h"
       
# 80 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Wait_Recal(void);
__attribute__((noinline)) void __Set_Refresh(void);
__attribute__((noinline)) void __Recalibrate(void);
__attribute__((noinline)) void __Reset0Ref_D0(void);
__attribute__((noinline)) void __Check0Ref(void);
__attribute__((noinline)) void __Reset0Ref(void);
__attribute__((noinline)) void __Reset_Pen(void);
__attribute__((noinline)) void __Reset0Int(void);
# 102 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Dec_3_Counters(void);
__attribute__((noinline)) void __Dec_6_Counters(void);
__attribute__((noinline)) void __Dec_Counters(volatile const unsigned int b, void* volatile const x);







__attribute__((noinline)) void __DP_to_D0(void);
__attribute__((noinline)) void __DP_to_C8(void);
# 130 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Delay_3(void);
__attribute__((noinline)) void __Delay_2(void);
__attribute__((noinline)) void __Delay_1(void);
__attribute__((noinline)) void __Delay_0(void);
__attribute__((noinline)) void __Delay_b(volatile const unsigned int b);
__attribute__((noinline)) void __Delay_RTS(void);
# 147 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Dot_ix_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void __Dot_ix(void* volatile const x);
__attribute__((noinline)) void __Dot_d(volatile const int a, volatile const int b);
__attribute__((noinline)) void __Dot_dd(volatile const long int d);
__attribute__((noinline)) void __Dot_here(void);
__attribute__((noinline)) void __Dot_List(void* volatile const x);
__attribute__((noinline)) void __Dot_List_Reset(void* volatile const x);
# 173 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Print_Str_hwyx(void* volatile const u);
__attribute__((noinline)) void __Print_Str_yx(const void* volatile const u);
__attribute__((noinline)) void __Print_Str_d(volatile const int a, volatile const int b, void* volatile const u);
__attribute__((noinline)) void __Print_Str_dd(volatile const long int d, void* volatile const u);
__attribute__((noinline)) void __Print_List_hw(void* volatile const u);
__attribute__((noinline)) void __Print_List(void* volatile const u);
__attribute__((noinline)) void __Print_List_chk(void* volatile const u);
__attribute__((noinline)) void __Print_Ships_x(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void __Print_Ships(volatile const unsigned int a, volatile const unsigned int b, volatile const unsigned long int x);
__attribute__((noinline)) void __Print_Str(void* volatile const u);
__attribute__((noinline)) void __Print_MRast(void);
# 220 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Draw_Pat_VL_a(volatile const unsigned int a, void* volatile const x);
__attribute__((noinline)) void __Draw_Pat_VL(void* volatile const x);
__attribute__((noinline)) void __Draw_Pat_VL_d(volatile const long unsigned int d, void* volatile const x);
__attribute__((noinline)) void __Draw_Line_d(volatile const int a, volatile const int b);
__attribute__((noinline)) void __Draw_Line_dd(volatile const long int d);
__attribute__((noinline)) void __Draw_VLc(void* volatile const x);
__attribute__((noinline)) void __Draw_VL_ab(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void __Draw_VL(void* volatile const x);
__attribute__((noinline)) void __Draw_VLcs(void* volatile const x);
__attribute__((noinline)) void __Draw_VL_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void __Draw_VL_a(volatile const unsigned int a, void* volatile const x);
# 248 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Mov_Draw_VLc_a(void* volatile const x);
__attribute__((noinline)) void __Mov_Draw_VL_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void __Mov_Draw_VLcs(void* volatile const x);
__attribute__((noinline)) void __Mov_Draw_VL_ab(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void __Mov_Draw_VL_a(volatile const unsigned int a, void* volatile const x);
__attribute__((noinline)) void __Mov_Draw_VL(void* volatile const x);
__attribute__((noinline)) void __Mov_Draw_VL_d(volatile const int a, volatile const int b);
# 284 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Draw_VL_mode(volatile const const void* x);
__attribute__((noinline)) void __Draw_VLp_7F(void* volatile const x);
__attribute__((noinline)) void __Draw_VLp_FF(void* volatile const x);
__attribute__((noinline)) void __Draw_VLp_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void __Draw_VLp(void* const x);
__attribute__((noinline)) void __Draw_VLp_scale(void* volatile const x);
__attribute__((noinline)) void __Rot_VL_Mode_a(volatile const unsigned int a, void* volatile const x, void* volatile const u);
__attribute__((noinline)) void __Rot_VL_Pack(void* volatile const x, void* volatile const u);
# 301 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Draw_Grid_VL(void* volatile const x, void* volatile const y);
# 324 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) unsigned int __Random_3(void);
__attribute__((noinline)) unsigned int __Random(void);
__attribute__((noinline)) unsigned int __xRandom(void);

__attribute__((noinline)) unsigned int __Bitmask_a(volatile const unsigned int a);

__attribute__((noinline)) long unsigned int __Abs_a_b(volatile const int a, volatile const int b);
__attribute__((noinline)) unsigned int __Abs_b(volatile const int b);

__attribute__((noinline)) long unsigned int __Rise_Run_Angle(volatile const int a, volatile const int b);
__attribute__((noinline)) long unsigned int __Get_Rise_Idx(volatile const int a);
__attribute__((noinline)) int __Xform_Sin(volatile const int a);
__attribute__((noinline)) long unsigned int __Get_Rise_Run(void);

__attribute__((noinline)) int __Xform_Run_a(volatile const int a);
__attribute__((noinline)) int __Xform_Run(void);
__attribute__((noinline)) int __Xform_Rise_a(volatile const int a);
__attribute__((noinline)) int __Xform_Rise(void);
# 351 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Clear_x_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void __Clear_C8_RAM(void);
__attribute__((noinline)) void __Clear_x_256(void* volatile const x);
__attribute__((noinline)) void __Clear_x_d(volatile const long unsigned int d, void* volatile const x);







__attribute__((noinline)) void __Move_Mem_a_1(volatile const unsigned int a, void* volatile const x, void* volatile const u);
__attribute__((noinline)) void __Move_Mem_a(volatile const unsigned int a, void* volatile const x, void* volatile const u);







__attribute__((noinline)) void __Clear_x_b_80(volatile const int b, void* volatile const x);
__attribute__((noinline)) void __Clear_x_b_a(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x);
# 382 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Read_Btns_Mask(volatile const unsigned int a);
__attribute__((noinline)) void __Read_Btns(void);
__attribute__((noinline)) void __Joy_Analog(void);
__attribute__((noinline)) void __Joy_Digital(void);
# 430 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Select_Game(volatile const unsigned int a, volatile const unsigned int b);
__attribute__((noinline)) void __Display_Option(volatile const unsigned int a, const void (*volatile const const y));
# 443 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Reset(void);
__attribute__((noinline)) void __Init_VIA(void);
__attribute__((noinline)) void __Init_OS_RAM(void);
__attribute__((noinline)) void __Init_OS(void);
__attribute__((noinline)) void __Init_Music_Buf(void);
# 471 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Clear_Score(void* volatile const x);
__attribute__((noinline)) void __Add_Score_a(volatile const unsigned int a, void* volatile const x);
__attribute__((noinline)) void __Add_Score_d(volatile const long unsigned int d, void* volatile const x);
__attribute__((noinline)) void __Strip_Zeros(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) unsigned int __Compare_Score(void* volatile const x, void* volatile const u);
__attribute__((noinline)) void __New_High_Score(void* volatile const x, void* volatile const u);
# 495 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Sound_Byte(volatile const unsigned int a, volatile const unsigned int b);
__attribute__((noinline)) void __Sound_Byte_x(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void __Clear_Sound(void);
__attribute__((noinline)) void __Sound_Bytes(void* volatile const u);
__attribute__((noinline)) void __Sound_Bytes_x(void* volatile const x, void* volatile const u);
__attribute__((noinline)) void __Do_Sound(void);
__attribute__((noinline)) void __Do_Sound_x(void* volatile const x);
__attribute__((noinline)) void __Init_Music_chk(volatile const const void* u);
__attribute__((noinline)) void __Init_Music(void* volatile const u);
__attribute__((noinline)) void __Init_Music_a(void* volatile const x, void* volatile const u);
__attribute__((noinline)) void __Init_Music_x(void* volatile const u);
__attribute__((noinline)) void __Stop_Sound(void);
__attribute__((noinline)) void __Explosion_Snd(volatile const const void* u);
__attribute__((noinline)) void __Set_Amp(volatile const unsigned int b);
# 549 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Moveto_x_7F(void* volatile const x);
__attribute__((noinline)) void __Moveto_d_7F(volatile const int a, volatile const int b);
__attribute__((noinline)) void __Moveto_dd_7F(volatile const long int d);
__attribute__((noinline)) void __Moveto_ix_FF(void* volatile const x);
__attribute__((noinline)) void __Moveto_ix_7F(void* volatile const x);
__attribute__((noinline)) void __Moveto_ix_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void __Moveto_ix(void* volatile const x);
__attribute__((noinline)) void __Moveto_d(volatile const int a, volatile const int b);
__attribute__((noinline)) void __Moveto_dd(volatile const long int d);
# 568 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Intensity_1F(void);
__attribute__((noinline)) void __Intensity_3F(void);
__attribute__((noinline)) void __Intensity_5F(void);
__attribute__((noinline)) void __Intensity_7F(void);
__attribute__((noinline)) void __Intensity_a(volatile const unsigned int a);
# 581 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) unsigned int __Obj_Will_Hit_u(volatile const int a, volatile const int b, volatile const long int x, volatile const long int y, volatile const long int u);
__attribute__((noinline)) unsigned int __Obj_Will_Hit(volatile const int a, volatile const int b, volatile const long int x, volatile const long int y, volatile const long int* u);

__attribute__((noinline)) unsigned int __Obj_Hit(volatile const int a, volatile const int b, volatile const long int x, volatile const long int y);
# 598 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) long unsigned int __Rise_Run_X(volatile const int a, volatile const int b);
__attribute__((noinline)) long unsigned int __Rise_Run_Y(volatile const int a, volatile const int b);
__attribute__((noinline)) int __Rise_Run_Len(volatile const int a);
__attribute__((noinline)) void __Rot_VL_ab(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x, void* volatile const u);
__attribute__((noinline)) void __Rot_VL_Diff(volatile const unsigned int b, void* volatile const x, void* volatile const u);
__attribute__((noinline)) void __Rot_VL(void* volatile const x, void* volatile const u);
# 652 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_rum.h"
__attribute__((noinline)) void __Dot_y(volatile const long int y);
__attribute__((noinline)) void __Dot_py(void* volatile const y);

__attribute__((noinline)) void __Draw_Pack(volatile const unsigned int b, void* volatile const x, volatile const long int y);
__attribute__((noinline)) void __Draw_Pack_py(volatile const unsigned int b, void* volatile const x, void* volatile const y);

__attribute__((noinline)) void __Print_Msg(void* volatile const y, void* volatile const u);
__attribute__((noinline)) unsigned int __Rnd_Cone(void);

__attribute__((noinline)) long unsigned int __Displ8_xy(volatile const unsigned int a, volatile const unsigned int b);
__attribute__((noinline)) long unsigned int __Displ16_xy(volatile const unsigned int a, volatile const unsigned int b);

__attribute__((noinline)) long unsigned int __Ranpos(void);
__attribute__((noinline)) void __Draw_Scores(void);
__attribute__((noinline)) void __Draw_Score(void);
__attribute__((noinline)) void __Wait_Bound(void);
# 43 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h" 2
# 1 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_pjc.h" 1
# 38 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_pjc.h"
       
# 80 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Wait_Recal(void);
__attribute__((noinline)) void _Set_Refresh(void);
__attribute__((noinline)) void _Recalibrate(void);
__attribute__((noinline)) void _Reset0Ref_D0(void);
__attribute__((noinline)) void _Check0Ref(void);
__attribute__((noinline)) void _Reset0Ref(void);
__attribute__((noinline)) void _Reset_Pen(void);
__attribute__((noinline)) void _Reset0Int(void);
# 102 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Dec_3_Counters(void);
__attribute__((noinline)) void _Dec_6_Counters(void);
__attribute__((noinline)) void _Dec_Counters(volatile const unsigned int b, void* volatile const x);







__attribute__((noinline)) void _DP_to_D0(void);
__attribute__((noinline)) void _DP_to_C8(void);
# 130 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Delay_3(void);
__attribute__((noinline)) void _Delay_2(void);
__attribute__((noinline)) void _Delay_1(void);
__attribute__((noinline)) void _Delay_0(void);
__attribute__((noinline)) void _Delay_b(volatile const unsigned int b);
__attribute__((noinline)) void _Delay_RTS(void);
# 147 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Dot_ix_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void _Dot_ix(void* volatile const x);
__attribute__((noinline)) void _Dot_d(volatile const int a, volatile const int b);
__attribute__((noinline)) void _Dot_dd(volatile const long int d);
__attribute__((noinline)) void _Dot_here(void);
__attribute__((noinline)) void _Dot_List(void* volatile const x);
__attribute__((noinline)) void _Dot_List_Reset(void* volatile const x);
# 173 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Print_Str_hwyx(void* volatile const u);
__attribute__((noinline)) void _Print_Str_yx(const void* volatile const u);
__attribute__((noinline)) void _Print_Str_d(volatile const int a, volatile const int b, void* volatile const u);
__attribute__((noinline)) void _Print_Str_dd(volatile const long int d, void* volatile const u);
__attribute__((noinline)) void _Print_List_hw(void* volatile const u);
__attribute__((noinline)) void _Print_List(void* volatile const u);
__attribute__((noinline)) void _Print_List_chk(void* volatile const u);
__attribute__((noinline)) void _Print_Ships_x(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void _Print_Ships(volatile const unsigned int a, volatile const unsigned int b, volatile const unsigned long int x);
__attribute__((noinline)) void _Print_Str(void* volatile const u);
__attribute__((noinline)) void _Print_MRast(void);
# 220 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Draw_Pat_VL_aa(volatile const unsigned int a, void* volatile const x);
__attribute__((noinline)) void _Draw_Pat_VL_a(volatile const unsigned int a, void* volatile const x);
__attribute__((noinline)) void _Draw_Pat_VL(void* volatile const x);





__attribute__((noinline)) void _Draw_Line_d(volatile const int a, volatile const int b);
__attribute__((noinline)) void _Draw_Line_dd(volatile const long int d);
__attribute__((noinline)) void _Draw_VLc(void* volatile const x);
__attribute__((noinline)) void _Draw_VL_ab(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void _Draw_VL(void* volatile const x);
__attribute__((noinline)) void _Draw_VLcs(void* volatile const x);
__attribute__((noinline)) void _Draw_VL_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void _Draw_VL_a(volatile const unsigned int a, void* volatile const x);
# 253 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Mov_Draw_VLc_a(void* volatile const x);
__attribute__((noinline)) void _Mov_Draw_VL_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void _Mov_Draw_VLcs(void* volatile const x);
__attribute__((noinline)) void _Mov_Draw_VL_ab(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void _Mov_Draw_VL_a(volatile const unsigned int a, void* volatile const x);
__attribute__((noinline)) void _Mov_Draw_VL(void* volatile const x);
__attribute__((noinline)) void _Mov_Draw_VL_d(volatile const int a, volatile const int b);
# 289 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Draw_VL_mode(volatile const const void* x);
__attribute__((noinline)) void _Draw_VLp_7F(void* volatile const x);
__attribute__((noinline)) void _Draw_VLp_FF(void* volatile const x);
__attribute__((noinline)) void _Draw_VLp_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void _Draw_VLp(void* const x);
__attribute__((noinline)) void _Draw_VLp_scale(void* volatile const x);
__attribute__((noinline)) void _Rot_VL_Mode(volatile const unsigned int a, void* volatile const x, void* volatile const u);
__attribute__((noinline)) void _Rot_VL_Pack(void* volatile const x, void* volatile const u);
# 306 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Draw_Grid_VL(void* volatile const x, void* volatile const y);
# 329 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) unsigned int _Random_3(void);
__attribute__((noinline)) unsigned int _Random(void);

__attribute__((noinline)) unsigned int _Bitmask_a(volatile const unsigned int a);

__attribute__((noinline)) long unsigned int _Abs_a_b(volatile const int a, volatile const int b);
__attribute__((noinline)) unsigned int _Abs_b(volatile const int b);

__attribute__((noinline)) long unsigned int _Rise_Run_Angle(volatile const int a, volatile const int b);
__attribute__((noinline)) long unsigned int _Get_Rise_Idx(volatile const int a);
__attribute__((noinline)) int _Xform_Sin(volatile const int a);
__attribute__((noinline)) long unsigned int _Get_Rise_Run(void);

__attribute__((noinline)) int _Xform_Run_a(volatile const int a);
__attribute__((noinline)) int _Xform_Run(void);
__attribute__((noinline)) int _Xform_Rise_a(volatile const int a);
__attribute__((noinline)) int _Xform_Rise(void);
# 355 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Clear_x_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void _Clear_C8_RAM(void);
__attribute__((noinline)) void _Clear_x_256(void* volatile const x);
__attribute__((noinline)) void _Clear_x_d(void* volatile const x, volatile const long unsigned int d);







__attribute__((noinline)) void _Move_Mem_a_1(volatile const unsigned int a, void* volatile const x, void* volatile const u);
__attribute__((noinline)) void _Move_Mem_a(volatile const unsigned int a, void* volatile const x, void* volatile const u);







__attribute__((noinline)) void _Clear_x_b_80(volatile const int b, void* volatile const x);
__attribute__((noinline)) void _Clear_x_b_a(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x);
# 386 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Read_Btns_Mask(volatile const unsigned int a);
__attribute__((noinline)) void _Read_Btns(void);
__attribute__((noinline)) void _Joy_Analog(void);
__attribute__((noinline)) void _Joy_Digital(void);
# 434 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Select_Game(volatile const unsigned int b, volatile const unsigned int a);
__attribute__((noinline)) void _Display_Option(volatile const unsigned int b, const void* const x);
# 447 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Reset(void);
__attribute__((noinline)) void _Init_VIA(void);
__attribute__((noinline)) void _Init_OS_RAM(void);
__attribute__((noinline)) void _Init_OS(void);
__attribute__((noinline)) void _Init_Music_Buf(void);
# 475 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Clear_Score(void* volatile const x);
__attribute__((noinline)) void _Add_Score_a(volatile const unsigned int a, void* volatile const x);
__attribute__((noinline)) void _Add_Score_d(void* volatile const x, volatile const long unsigned int d);
__attribute__((noinline)) void _Strip_Zeros(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) unsigned int _Compare_Score(void* volatile const x, void* volatile const u);
__attribute__((noinline)) void _New_High_Score(void* volatile const x, void* volatile const u);
# 499 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Sound_Byte(volatile const unsigned int a, volatile const unsigned int b);
__attribute__((noinline)) void _Sound_Byte_x(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void _Clear_Sound(void);
__attribute__((noinline)) void _Sound_Bytes(void* volatile const u);
__attribute__((noinline)) void _Sound_Bytes_x(void* volatile const x, void* volatile const u);
__attribute__((noinline)) void _Do_Sound(void);
__attribute__((noinline)) void _Do_Sound_x(void* volatile const x);
__attribute__((noinline)) void _Init_Music_chk(volatile const const void* u);
__attribute__((noinline)) void _Init_Music(void* volatile const u);
__attribute__((noinline)) void _Init_Music_a(void* volatile const x, void* volatile const u);
__attribute__((noinline)) void _Init_Music_x(void* volatile const u);
__attribute__((noinline)) void _Stop_Sound(void);
__attribute__((noinline)) void _Explosion_Snd(volatile const const void* u);
__attribute__((noinline)) void _Set_Amp(volatile const unsigned int b);
# 553 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Moveto_x_7F(void* volatile const x);
__attribute__((noinline)) void _Moveto_d_7F(volatile const int a, volatile const int b);
__attribute__((noinline)) void _Moveto_dd_7F(volatile const long int d);
__attribute__((noinline)) void _Moveto_ix_FF(void* volatile const x);
__attribute__((noinline)) void _Moveto_ix_7F(void* volatile const x);
__attribute__((noinline)) void _Moveto_ix_b(volatile const unsigned int b, void* volatile const x);
__attribute__((noinline)) void _Moveto_ix(void* volatile const x);
__attribute__((noinline)) void _Moveto_d(volatile const int a, volatile const int b);
__attribute__((noinline)) void _Moveto_dd(volatile const long int d);
# 572 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Intensity_1F(void);
__attribute__((noinline)) void _Intensity_3F(void);
__attribute__((noinline)) void _Intensity_5F(void);
__attribute__((noinline)) void _Intensity_7F(void);
__attribute__((noinline)) void _Intensity_a(volatile const unsigned int a);
# 585 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) unsigned int _Obj_Will_Hit_u(volatile const int a, volatile const int b, volatile const long int x, volatile const long int y, volatile const long int u);
__attribute__((noinline)) unsigned int _Obj_Will_Hit(volatile const int a, volatile const int b, volatile const long int x, volatile const long int y, volatile const long int* u);

__attribute__((noinline)) unsigned int _Obj_Hit(volatile int a, volatile const int b, volatile const long int x, volatile const long int y);
# 602 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) long unsigned int _Rise_Run_X(volatile const int a, volatile const int b);
__attribute__((noinline)) long unsigned int _Rise_Run_Y(volatile const int a, volatile const int b);
__attribute__((noinline)) long unsigned int _Rise_Run_Len(volatile const int a);
__attribute__((noinline)) void _Rot_VL_ab(volatile const unsigned int a, volatile const unsigned int b, void* volatile const x, void* volatile const u);
__attribute__((noinline)) void _Rot_VL_Diff(volatile const unsigned int b, void* volatile const x, void* volatile const u);
__attribute__((noinline)) void _Rot_VL(void* volatile const x, void* volatile const u);




__attribute__((noinline)) void _Rot_VL_M_dft(void* volatile const x, void* volatile const u);
# 656 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_pjc.h"
__attribute__((noinline)) void _Dot_y(volatile const long int y);
__attribute__((noinline)) void _Dot_py(void* volatile const y);

__attribute__((noinline)) void _Draw_Pack(volatile const unsigned int b, void* volatile const x, volatile const long int y);
__attribute__((noinline)) void _Draw_Pack_py(volatile const unsigned int b, void* volatile const x, void* volatile const y);

__attribute__((noinline)) void _Print_Msg(void* volatile const y, void* volatile const u);
__attribute__((noinline)) unsigned int _Rnd_Cone(void);

__attribute__((noinline)) long unsigned int _Displ8_xy(volatile const unsigned int a, volatile const unsigned int b);
__attribute__((noinline)) long unsigned int _Displ16_xy(volatile const unsigned int a, volatile const unsigned int b);

__attribute__((noinline)) long unsigned int _Ranpos(void);
__attribute__((noinline)) void _Draw_Scores(void);
__attribute__((noinline)) void _Draw_Score(void);
__attribute__((noinline)) void _Wait_Bound(void);
# 44 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h" 2
# 98 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Wait_Recal(void)
{
 __Wait_Recal();
}
# 125 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Recalibrate(void)
{
 __Recalibrate();
}
# 140 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Reset0Ref_D0(void)
{
 __Reset0Ref_D0();
}
# 156 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Check0Ref(void)
{
 __Check0Ref();
}
# 169 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Reset0Ref(void)
{
 __Reset0Ref();
}
# 185 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Reset_Pen(void)
{
 __Reset_Pen();
}
# 198 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Reset0Int(void)
{
 __Reset0Int();
}
# 220 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dec_3_Counters(void)
{
 __Dec_3_Counters();
}
# 235 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dec_6_Counters(void)
{
 __Dec_6_Counters();
}
# 250 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dec_Counters(const unsigned int b, void* const x)
{
 __Dec_Counters(b, x);
}
# 269 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void DP_to_D0(void)
{
 __DP_to_D0();
}
# 282 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void DP_to_C8(void)
{
 __DP_to_C8();
}
# 304 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Delay_3(void)
{
 __Delay_3();
}
# 316 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Delay_2(void)
{
 __Delay_2();
}
# 328 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Delay_1(void)
{
 __Delay_1();
}
# 340 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Delay_0(void)
{
 __Delay_0();
}
# 352 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Delay_b(const unsigned int b)
{
 __Delay_b(b);
}






static inline __attribute__((always_inline)) void Delay_RTS(void)
{
 __Delay_RTS();
}
# 393 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dot_ix_b(const unsigned int b, void* const x)
{
 __Dot_ix_b(b, x);
}
# 412 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dot_ix(void* const x)
{
 __Dot_ix(x);
}
# 429 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dot_d(const int a, const int b)
{
 _Dot_d(b, a);
}

static inline __attribute__((always_inline)) void Dot_dd(const long int d)
{
 _Dot_dd(d);
}
# 448 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dot_here(void)
{
 __Dot_here();
}
# 471 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dot_List(void* const x)
{
 __Dot_List(x);
}
# 495 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dot_List_Reset(void* const x)
{
 __Dot_List_Reset(x);
}
# 530 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_Str_hwyx(void* const u)
{
 _Print_Str_hwyx(u);
}
# 551 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_Str_yx(const void* const u)
{
 _Print_Str_yx(u);
}
# 573 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_Str_d(const int a, const int b, void* const u)
{
 _Print_Str_d(b, a, u);
}

static inline __attribute__((always_inline)) void Print_Str_dd(const long int d, void* const u)
{
 _Print_Str_dd(d, u);
}
# 601 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_List_hw(void* const u)
{
 _Print_List_hw(u);
}
# 624 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_List(void* const u)
{
 _Print_List(u);
}
# 647 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_List_chk(void* const u)
{
 _Print_List_chk(u);
}
# 668 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_Ships_x(const unsigned int a, const unsigned int b, void* const x)
{
 _Print_Ships_x(b, a, x);
}
# 689 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_Ships(const unsigned int a, const unsigned int b, const unsigned long int x)
{
 _Print_Ships(b, a, x);
}
# 709 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_Str(void* const u)
{
 _Print_Str(u);
}
# 729 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_MRast(void)
{
 _Print_MRast();
}
# 792 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_Pat_VL_aa(const unsigned int a, void* const x)
{
 _Draw_Pat_VL_aa(a, x);
}
# 819 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_Pat_VL_a(const unsigned int a, void* const x)
{
 _Draw_Pat_VL_a(a, x);
}
# 846 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_Pat_VL(void* const x)
{
 __Draw_Pat_VL(x);
}
# 874 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_Line_d(const int a, const int b)
{
 _Draw_Line_d(b, a);
}

static inline __attribute__((always_inline)) void Draw_Line_dd(const long int d)
{
 _Draw_Line_dd(d);
}
# 903 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VLc(void* const x)
{
 __Draw_VLc(x);
}
# 927 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VL_ab(const unsigned int a, const unsigned int b, void* const x)
{
 _Draw_VL_ab(b, a, x);
}
# 951 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VL(void* const x)
{
 __Draw_VL(x);
}
# 975 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VLcs(void* const x)
{
 __Draw_VLcs(x);
}
# 999 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VL_b(const unsigned int b, void* const x)
{
 __Draw_VL_b(b, x);
}
# 1023 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VL_a(const unsigned int a, void* const x)
{
 _Draw_VL_a(a, x);
}
# 1063 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Mov_Draw_VLc_a(void* const x)
{
 __Mov_Draw_VLc_a(x);
}
# 1086 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Mov_Draw_VL_b(const unsigned int b, void* const x)
{
 __Mov_Draw_VL_b(b, x);
}
# 1110 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Mov_Draw_VLcs(void* const x)
{
 __Mov_Draw_VLcs(x);
}
# 1134 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Mov_Draw_VL_ab(const unsigned int a, const unsigned int b, void* const x)
{
 _Mov_Draw_VL_ab(b, a, x);
}
# 1158 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Mov_Draw_VL_a(const unsigned int a, void* const x)
{
 _Mov_Draw_VL_a(a, x);
}
# 1182 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Mov_Draw_VL(void* const x)
{
 __Mov_Draw_VL(x);
}
# 1203 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Mov_Draw_VL_d(const int a, const int b)
{
 _Mov_Draw_VL_d(b, a);
}
# 1236 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VL_mode(const const void* x)
{
 __Draw_VL_mode(x);
}
# 1263 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VLp_7F(void* const x)
{
 __Draw_VLp_7F(x);
}
# 1291 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VLp_FF(void* const x)
{
 __Draw_VLp_FF(x);
}
# 1317 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VLp_b(const unsigned int b, void* const x)
{
 __Draw_VLp_b(b, x);
}
# 1343 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VLp(void* const x)
{
 __Draw_VLp(x);
}
# 1369 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_VLp_scale(void* const x)
{
 __Draw_VLp_scale(x);
}
# 1392 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Rot_VL_Mode(const unsigned int a, void* const x, void* const u)
{
 _Rot_VL_Mode(a, x, u);
}
# 1415 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Rot_VL_Pack(void* const x, void* const u)
{
 _Rot_VL_Pack(x, u);
}
# 1438 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Rot_VL_M_dft(void* const x, void* const u)
{
 _Rot_VL_M_dft(x, u);
}







static inline __attribute__((always_inline)) void Draw_Grid_VL(void* const x, void* const y)
{
 _Draw_Grid_VL(x, y);
}
# 1484 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) unsigned int Random_3(void)
{
 return _Random_3();
}
# 1497 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) unsigned int Random(void)
{
 return _Random();
}
# 1519 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) unsigned int Bitmask_a(const unsigned int a)
{
 return _Bitmask_a(a);
}
# 1535 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) long unsigned int Abs_a_b(const int a, const int b)
{
 return _Abs_a_b(b, a);
}
# 1549 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) unsigned int Abs_b(const int b)
{
 return __Abs_b(b);
}
# 1565 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) long unsigned int Rise_Run_Angle(const int a, const int b)
{
 return _Rise_Run_Angle(b, a);
}
# 1579 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) long unsigned int Get_Rise_Idx(const int a)
{
 return _Get_Rise_Idx(a);
}
# 1593 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) int Xform_Sin(const int a)
{
 return _Xform_Sin(a);
}
# 1608 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) long unsigned int Get_Rise_Run(void)
{
 return _Get_Rise_Run();
}
# 1624 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) int Xform_Run_a(const int a)
{
 return _Xform_Run_a(a);
}
# 1639 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) int Xform_Run(void)
{
 return _Xform_Run();
}
# 1655 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) int Xform_Rise_a(const int a)
{
 return _Xform_Rise_a(a);
}
# 1670 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) int Xform_Rise(void)
{
 return _Xform_Rise();
}
# 1692 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Clear_x_b(const unsigned int b, void* const x)
{
 __Clear_x_b(b, x);
}
# 1705 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Clear_C8_RAM(void)
{
 __Clear_C8_RAM();
}
# 1717 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Clear_x_256(void* const x)
{
 __Clear_x_256(x);
}
# 1730 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Clear_x_d(const long unsigned int d, void* const x)
{
 _Clear_x_d(x, d);
}
# 1751 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Move_Mem_a_1(const unsigned int a, void* const x, void* const u)
{
 _Move_Mem_a_1(a, x, u);
}
# 1766 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Move_Mem_a(const unsigned int a, void* const x, void* const u)
{
 _Move_Mem_a(a, x, u);
}







static inline __attribute__((always_inline)) void Clear_x_b_80(const int b, void* const x)
{
 __Clear_x_b_80(b, x);
}

static inline __attribute__((always_inline)) void Clear_x_b_a(const unsigned int a, const unsigned int b, void* const x)
{
 _Clear_x_b_a(b, a, x);
}
# 1805 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Read_Btns_Mask(const unsigned int a)
{
 _Read_Btns_Mask(a);
}
# 1819 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Read_Btns(void)
{
 __Read_Btns();
}
# 1852 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Joy_Analog(void)
{
 __Joy_Analog();
}
# 1881 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Joy_Digital(void)
{
 __Joy_Digital();
}
# 1944 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Select_Game(const unsigned int a, const unsigned int b)
{
 _Select_Game(b, a);
}
# 1961 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Display_Option(const unsigned int a, const void* const y)
{
 _Display_Option(a, y);
}
# 1976 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Reset(void)
{
 __Reset();
}
# 1994 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Init_VIA(void)
{
 __Init_VIA();
}
# 2018 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Init_OS_RAM(void)
{
 __Init_OS_RAM();
}
# 2044 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Init_OS(void)
{
 __Init_OS();
}
# 2060 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Init_Music_Buf(void)
{
 __Init_Music_Buf();
}
# 2103 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Clear_Score(void* const x)
{
 __Clear_Score(x);
}
# 2127 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Add_Score_a(const unsigned int a, void* const x)
{
 _Add_Score_a(a, x);
}
# 2150 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Add_Score_d(const long unsigned int d, void* const x)
{
 _Add_Score_d(x, d);
}



static inline __attribute__((always_inline)) void Strip_Zeros(const unsigned int b, void* const x)
{
 __Strip_Zeros(b, x);
}
# 2183 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) unsigned int Compare_Score(void* const x, void* const u)
{
 return _Compare_Score(x, u);
}
# 2207 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void New_High_Score(void* const x, void* const u)
{
 _New_High_Score(x, u);
}
# 2239 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Sound_Byte(const unsigned int a, const unsigned int b)
{
 _Sound_Byte(b, a);
}
# 2254 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Sound_Byte_x(const unsigned int a, const unsigned int b, void* const x)
{
 _Sound_Byte_x(b, a, x);
}
# 2268 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Clear_Sound(void)
{
 __Clear_Sound();
}
# 2283 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Sound_Bytes(void* const u)
{
 _Sound_Bytes(u);
}
# 2298 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Sound_Bytes_x(void* const x, void* const u)
{
 _Sound_Bytes_x(x, u);
}
# 2314 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Do_Sound(void)
{
 _Do_Sound();
}
# 2351 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Init_Music_chk(const const void* u)
{
 _Init_Music_chk(u);
}
# 2395 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Init_Music(void* const u)
{
 _Init_Music(u);
}
# 2423 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Init_Music_a(void* const x, void* const u)
{
 _Init_Music_a(x, u);
}
# 2452 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Init_Music_x(void* const u)
{
 _Init_Music_x(u);
}
# 2467 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Stop_Sound(void)
{
 __Stop_Sound();
}
# 2502 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Explosion_Snd(const const void* u)
{
 _Explosion_Snd(u);
}
# 2517 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Set_Amp(const unsigned int b)
{
 __Set_Amp(b);
}
# 2575 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Moveto_x_7F(void* const x)
{
 __Moveto_x_7F(x);
}
# 2590 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Moveto_d_7F(const int a, const int b)
{
 _Moveto_d_7F(b, a);
}

static inline __attribute__((always_inline)) void Moveto_dd_7F(const long int d)
{
 _Moveto_dd_7F(d);
}
# 2614 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Moveto_ix_FF(void* const x)
{
 __Moveto_ix_FF(x);
}
# 2633 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Moveto_ix_7F(void* const x)
{
 __Moveto_ix_7F(x);
}
# 2653 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Moveto_ix_b(const unsigned int b, void* const x)
{
 __Moveto_ix_b(b, x);
}
# 2671 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Moveto_ix(void* const x)
{
 __Moveto_ix(x);
}
# 2689 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Moveto_d(const int a, const int b)
{
 _Moveto_d(b, a);
}

static inline __attribute__((always_inline)) void Moveto_dd(const long int d)
{
 _Moveto_dd(d);
}
# 2718 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Intensity_1F(void)
{
 __Intensity_1F();
}
# 2733 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Intensity_3F(void)
{
 __Intensity_3F();
}
# 2748 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Intensity_5F(void)
{
 __Intensity_5F();
}
# 2763 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Intensity_7F(void)
{
 __Intensity_7F();
}
# 2780 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Intensity_a(const unsigned int a)
{
 _Intensity_a(a);
}
# 2803 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) unsigned int Obj_Will_Hit_u(const int a, const int b, const long int x, const long int y, const long int u)
{
 return _Obj_Will_Hit_u(b, a, x, y, u);
}
# 2819 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) unsigned int Obj_Will_Hit(const int a, const int b, const long int x, const long int y, const long int* u)
{
 return _Obj_Will_Hit(b, a, x, y, u);
}
# 2834 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) unsigned int Obj_Hit(const int a, const int b, const long int x, const long int y)
{
 return _Obj_Hit(b, a, x, y);
}
# 2861 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) long unsigned int Rise_Run_X(const int a, const int b)
{
 return _Rise_Run_X(b, a);
}
# 2876 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) long unsigned int Rise_Run_Y(const int a, const int b)
{
 return _Rise_Run_Y(b, a);
}
# 2891 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) unsigned long int Rise_Run_Len(const int a)
{
 return _Rise_Run_Len(a);
}
# 2914 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Rot_VL_ab(const unsigned int a, const unsigned int b, void* const x, void* const u)
{
 _Rot_VL_ab(b, a, x, u);
}
# 2936 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Rot_VL_Diff(const unsigned int b, void* const x, void* const u)
{
 _Rot_VL_Diff(b, x, u);
}
# 2959 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Rot_VL(void* const x, void* const u)
{
 _Rot_VL(x, u);
}
# 3014 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dot_y(const long int y)
{
 _Dot_y(y);
}
# 3028 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Dot_py(void* const y)
{
 _Dot_py(y);
}
# 3053 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_Pack(const unsigned int b, void* const x, const long int y)
{
 _Draw_Pack(b, x, y);
}
# 3076 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_Pack_py(const unsigned int b, void* const x, void* const y)
{
 _Draw_Pack_py(b, x, y);
}
# 3094 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Print_Msg(void* const y, void* const u)
{
 _Print_Msg(y, u);
}
# 3106 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) unsigned int Rnd_Cone(void)
{
 return __Rnd_Cone();
}
# 3121 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) long unsigned int Displ8_xy(const unsigned int a, const unsigned int b)
{
 return _Displ8_xy(b, a);
}
# 3136 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) long unsigned int Displ16_xy(const unsigned int a, const unsigned int b)
{
 return _Displ16_xy(b, a);
}
# 3150 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) long unsigned int Ranpos(void)
{
 return _Ranpos();
}
# 3176 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_Scores(void)
{
 _Draw_Scores();
}
# 3202 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Draw_Score(void)
{
 _Draw_Score();
}
# 3226 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct_inl.h"
static inline __attribute__((always_inline)) void Wait_Bound(void)
{
 _Wait_Bound();
}
# 41 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum_fct.h" 2
# 48 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vec_rum.h" 2
# 44 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/vectrex.h" 2
# 26 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\mainSupport.c" 2
# 1 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/assert.h" 1




       






void _f_assert_failed(char* file, unsigned int length, unsigned long int line, char* func, char* expr, unsigned int l_expr);
# 27 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\mainSupport.c" 2



# 1 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\/../BothBanks.i" 1
       
# 1 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\/../string.h" 1
       
# 18 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\/../string.h"
extern int _XC;
extern int _YC;
extern int msgLine;
extern char msg_1[40];
extern char msg_2[40];
extern char msg_3[40];

extern char stringBuffer40[40];
extern char stringBuffer4[4];
extern char stringBuffer6[6];
extern char stringBuffer12[12];
extern char stringBufferExtra[12];


extern unsigned int _x;
extern unsigned int _a;
extern unsigned int _b;
extern unsigned int _c;


extern unsigned int __x;
extern unsigned int __a;
extern unsigned int __b;
extern unsigned int __c;




extern char * const msg[4];






extern void initString();


extern void printMessage(char * m);
extern void displayMessages();


extern void syncPrintStrd(const int a, const int b, void* const u);
# 84 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\/../string.h"
extern void printfsi(const char *s1, const char *s2, const unsigned int i);






extern void vstrcpy(char * dest, char *source);
extern unsigned int vstrlen(char * dest);
extern void exchange0with80(char *s);
extern void* memset(void* dest, unsigned int val, long unsigned int len);

extern char * itoa(unsigned int n);
extern char * itoa_s(unsigned int n);
extern char * itoa_s_s(signed int n);
extern char * ltoa(unsigned long n);
extern char * ltoa_s(unsigned long n);
extern char * lltoa(unsigned long long n);
extern char * lltoa_s(unsigned long long n);
# 111 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\/../string.h"
extern char * _fs(const char *s1, const char *s2);
extern char * _fi(const char *s1, unsigned int i);
extern char * _fi_s(const char *s1, unsigned int i);
extern char * _fi_s_s(const char *s1, signed int i);


extern void _fsi(const char *s1, const char *s2, const unsigned int i);
extern void _fsi2(const char *s1, const unsigned int i, const char *s2);

extern void _fsi2_s(const char *s1, const unsigned int i, const char *s2);
extern void _fsi_s(const char *s1, const char *s2, const unsigned int i);


extern void _fl(const char *s1, const unsigned long i);
extern void _fl_s(const char *s1, const unsigned long i);
extern void _fl_l_s(const char *s1, const unsigned long i1, const unsigned long i2);

extern void _fll(const char *s1, const unsigned long long int i);
extern void _fll_s(const char *s1, const unsigned long long i);

extern void _fsss(const char *s1, const char *s2, const char *s3, const char *s4);
# 140 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\/../string.h"
extern unsigned int Rand();
extern unsigned int RandMax(unsigned int m);
extern unsigned long int lRandMax(unsigned int m);
extern void saveSeed();
extern void restoreSeed();
# 3 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\/../BothBanks.i" 2
# 1 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\/../controller.h" 1




       
# 16 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\/../controller.h"
static inline void enable_controller_1_x()
{
  Vec_Joy_Mux_1_X = 1;
}

static inline void enable_controller_1_y()
{
  Vec_Joy_Mux_1_Y = 3;
}

static inline void enable_controller_2_x()
{
  Vec_Joy_Mux_2_X = 5;
}

static inline void enable_controller_2_y()
{
  Vec_Joy_Mux_2_Y = 7;
}

static inline void disable_controller_1_x()
{
  Vec_Joy_Mux_1_X = 0;
}

static inline void disable_controller_1_y()
{
  Vec_Joy_Mux_1_Y = 0;
}

static inline void disable_controller_2_x()
{
  Vec_Joy_Mux_2_X = 0;
}

static inline void disable_controller_2_y()
{
  Vec_Joy_Mux_2_Y = 0;
}





static inline void check_buttons()
{
 Read_Btns();
}

static inline unsigned int buttons_pressed()
{
 return Vec_Buttons;
}

static inline unsigned int buttons_held()
{
 return Vec_Btn_State;
}
static inline void resetButtons()
{
    Vec_Buttons = 0;
}
static inline void resetJoystick()
{
    Vec_Joy_1_X = Vec_Joy_1_Y = 0;
}







static inline unsigned int button_1_1_pressed()
{
 return (buttons_pressed() & 0b00000001);
}

static inline unsigned int button_1_2_pressed()
{
 return (buttons_pressed() & 0b00000010);
}
static inline unsigned int button_1_3_pressed()
{
 return (buttons_pressed() & 0b00000100);
}
static inline unsigned int button_1_4_pressed()
{
 return (buttons_pressed() & 0b00001000);
}

static inline unsigned int button_2_1_pressed()
{
 return (buttons_pressed() & 0b00010000);
}

static inline unsigned int button_2_2_pressed()
{
 return (buttons_pressed() & 0b00100000);
}
static inline unsigned int button_2_3_pressed()
{
 return (buttons_pressed() & 0b01000000);
}

static inline unsigned int button_2_4_pressed()
{
 return (buttons_pressed() & 0b10000000);
}





static inline unsigned int button_1_1_held()
{
 return (buttons_held() & 0b00000001);
}

static inline unsigned int button_1_2_held()
{
 return (buttons_held() & 0b00000010);
}
static inline unsigned int button_1_3_held()
{
 return (buttons_held() & 0b00000100);
}
static inline unsigned int button_1_4_held()
{
 return (buttons_held() & 0b00001000);
}

static inline unsigned int button_2_1_held()
{
 return (buttons_held() & 0b00010000);
}

static inline unsigned int button_2_2_held()
{
 return (buttons_held() & 0b00100000);
}
static inline unsigned int button_2_3_held()
{
 return (buttons_held() & 0b01000000);
}

static inline unsigned int button_2_4_held()
{
 return (buttons_held() & 0b10000000);
}





static inline void check_joysticks()
{
 Joy_Digital();
}

static inline int joystick_1_x()
{
 return Vec_Joy_1_X;
}

static inline int joystick_1_y()
{
 return Vec_Joy_1_Y;
}

static inline int joystick_2_x()
{
 return Vec_Joy_2_X;
}

static inline int joystick_2_y()
{
 return Vec_Joy_2_Y;
}






static inline int joystick_1_left()
{
 return (joystick_1_x() < 0);
}

static inline int joystick_1_right()
{
 return (joystick_1_x() > 0);
}

static inline int joystick_1_down()
{
 return (joystick_1_y() < 0);
}

static inline int joystick_1_up()
{
 return (joystick_1_y() > 0);
}

static inline int joystick_2_left()
{
 return (joystick_2_x() < 0);
}

static inline int joystick_2_right()
{
 return (joystick_2_x() > 0);
}

static inline int joystick_2_down()
{
 return (joystick_2_y() < 0);
}

static inline int joystick_2_up()
{
 return (joystick_2_y() > 0);
}
# 4 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\/../BothBanks.i" 2
# 1 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\/../roomDefines.h" 1
       
# 5 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\/../BothBanks.i" 2
# 31 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\mainSupport.c" 2
# 1 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\/../globals.h" 1


       
# 22 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\/../globals.h"
extern unsigned long int screen[4][4];
extern unsigned int above;
extern unsigned int inElevator;
extern signed int elevatorY;


extern unsigned int timer;
extern unsigned int localTimer;
extern int lightChange;
extern unsigned int specialAction;






extern char stringBuffer4[4];
extern char stringBuffer6[6];
extern char stringBuffer12[12];
extern char stringBuffer40[40];
# 51 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\/../globals.h"
extern int fillMap;
extern unsigned int utmp;
extern signed int tmp;
extern signed int tmp2;
extern unsigned long int ultmp;
extern signed long int ltmp;
extern signed long long int lltmp;

extern unsigned int s[6];
extern signed long int hp;
extern signed long int ch;
extern unsigned int lv;
extern unsigned int l;

extern unsigned long long ex;
extern unsigned long int su;
extern unsigned long int cs;




extern unsigned char cx;
extern unsigned char cy;
extern unsigned char cz;

extern unsigned long long gd;
extern unsigned long long tg;

extern unsigned int inventory[10];
extern unsigned int sf[11];

extern signed int box[4];





extern signed int m;
extern signed long mh;
extern unsigned int db;
extern unsigned int pa;
extern unsigned int dr;
extern unsigned int mb;
extern unsigned int un;
extern unsigned int ml;

extern signed int stackM[20];
extern unsigned int stackML[20];
extern signed long int stackMH[20];


extern int lastX;
extern int lastY;




extern int _XC;
extern int _YC;
extern int __y__;
extern int __x__;






extern int msgLine;
extern char msg_1[40];
extern char msg_2[40];
extern char msg_3[40];
extern char msg_4[40];
extern char * const msg[4];



extern unsigned int _x;
extern unsigned int _a;
extern unsigned int _b;
extern unsigned int _c;

extern unsigned int __x;
extern unsigned int __a;
extern unsigned int __b;
extern unsigned int __c;
# 145 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\/../globals.h"
extern unsigned char fpackX0x[5];
extern unsigned char fpackY0y[5];
extern unsigned char fpackZ0z[5];


extern unsigned char fpacktmp1[5];
extern unsigned char fpacktmp2[5];
extern unsigned char fpackQ[5];
# 235 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\/../globals.h"
extern unsigned int FP0EXP;
extern unsigned int FPA0[4];
extern unsigned int FP0SGN;

extern unsigned int COEFCT;
extern unsigned int STRDES[5];
extern unsigned int FPCARY;


extern unsigned int FP1EXP;
extern unsigned int FPA1[4];
extern unsigned int FP1SGN;

extern unsigned int RESSGN;
extern unsigned int FPSBYT;
extern unsigned int COEFPT[2];


extern unsigned int _TMPTR1;
extern unsigned int FPA2[4];

extern unsigned int V40;
extern unsigned int V41;
extern unsigned int V42;
extern unsigned int V43;
extern unsigned int V44;

extern unsigned int V45;
extern unsigned int V46;
extern unsigned int V47;
extern unsigned int V48[2];


extern unsigned int V4A;
extern unsigned int V4B[2];
extern unsigned int V4D[2];

extern unsigned int VAB;
extern unsigned int VAC;
extern unsigned int VAD;
extern unsigned int VAE;
extern unsigned int TMPLOC;
extern unsigned int CHARAC;
# 291 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\/../globals.h"
extern signed int printDungeon;

extern signed int printEnvironment;
extern signed int printCharacter;
extern signed int printTreasure;

extern signed int printfEffect;

extern unsigned int effectTimer;
extern signed int effectOffsetY;
extern signed int effectOffsetX;
# 32 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\mainSupport.c" 2

extern const char * const stats[];
extern const char * const items[];
extern const char ** const spellNames[];
extern const char * const mo[];
extern int testForButton(int d);




void pause(unsigned char t);



int displayStatusPage()
{
    unsigned int page = 0;
    int itemSelect = 0;
    int lastDir = 0;
    int lastDirY = 0;
    int ret = 0;


    do
    {
        check_buttons();
        if (!buttons_pressed()) break;
    } while (1);

    do
    {
        Wait_Recal();
        Do_Sound();
        Joy_Digital();
        check_buttons();
        dp_VIA_t1_cnt_lo = 0x7f;

        if ((Vec_Joy_1_X > 0) && (!lastDir))
            if (page<3) page++;
        if ((Vec_Joy_1_X < 0) && (!lastDir))
            if (page>0) page--;
        lastDir = Vec_Joy_1_X;
        Intensity_5F();

        int y=0x78;
        if (page == 0)
        {
            syncPrintStrd((const int)(-0x20), (const int)(y), (void *)("   STATS >>\x80"));
            dp_VIA_cntl = 0xcc;;
            y = 0x50;
            for (int i=0; i<6;i++)
            {
                _fsi_s("%: %" , stats[i], s[i]);
                syncPrintStrd((const int)(-0x20), (const int)(y), (void *)(stringBuffer40));
                dp_VIA_cntl = 0xcc;;
                y -= 10;
            }
            y -= 10;
            _fi_s("DUNGEON: %" , cz);
            syncPrintStrd((const int)(-0x20), (const int)(y), (void *)(stringBuffer40));
            dp_VIA_cntl = 0xcc;;

            y -= 10;
            _fl_l_s("HP: %/%" , (unsigned long int)ch, (unsigned long int)hp);
            syncPrintStrd((const int)(-0x20), (const int)(y), (void *)(stringBuffer40));
            dp_VIA_cntl = 0xcc;;
        }

        if (page == 1)
        {
            syncPrintStrd((const int)(-0x20), (const int)(y), (void *)("<< VARS >>\x80"));
            dp_VIA_cntl = 0xcc;;
            y = 0x50;

            _fi_s("LV: %" , lv);
            syncPrintStrd((const int)(-0x20), (const int)(y), (void *)(stringBuffer40));
            dp_VIA_cntl = 0xcc;;


            y -= 10;
            _fl_l_s("SU: %/%" , cs, su);
            syncPrintStrd((const int)(-0x20), (const int)(y), (void *)(stringBuffer40));
            dp_VIA_cntl = 0xcc;;

            y -= 10;
            _fll_s("XP: %" , ex);
            syncPrintStrd((const int)(-0x20), (const int)(y), (void *)(stringBuffer40));
            dp_VIA_cntl = 0xcc;;

            y -= 10;
            _fll_s("GD: %" , gd);
            syncPrintStrd((const int)(-0x20), (const int)(y), (void *)(stringBuffer40));
            dp_VIA_cntl = 0xcc;;

            y -= 10;
            _fll_s("TG: %" , tg);
            syncPrintStrd((const int)(-0x20), (const int)(y), (void *)(stringBuffer40));
            dp_VIA_cntl = 0xcc;;
        }

        if (page == 2)
        {
            syncPrintStrd((const int)(-0x20), (const int)(0x78), (void *)("<< MODS >>\x80"));
            dp_VIA_cntl = 0xcc;;
            y = 0x50;
            for (int i=0; i<7;i++)
            {
                if (inventory[i]<=0) continue;
                _fsi_s("% +%" , items[i], inventory[i]);
                syncPrintStrd((const int)(-0x20), (const int)(y), (void *)(stringBuffer40));
                dp_VIA_cntl = 0xcc;;
                y -= 10;
            }
        }

        if (page == 3)
        {
            syncPrintStrd((const int)(-0x20), (const int)(0x78), (void *)("<< ITEMS\x80"));
            dp_VIA_cntl = 0xcc;;
            y = 0x50;

            for (int i=7; i<10;i++)
            {
                _fsi_s("% :%" , items[i], inventory[i]);
                syncPrintStrd((const int)(-0x20), (const int)(y), (void *)(stringBuffer40));
                dp_VIA_cntl = 0xcc;;
                y -= 10;
            }

            if ((Vec_Joy_1_Y > 0) && (!lastDirY))
                if (itemSelect>0) itemSelect--;
            if ((Vec_Joy_1_Y < 0) && (!lastDirY))
                if (itemSelect<2) itemSelect++;

            syncPrintStrd((const int)(-0x65), (const int)(0x50-10*itemSelect), (void *)("-->\x80"));
            lastDirY = Vec_Joy_1_Y;

            if (buttons_pressed())
            {
                if (inventory[itemSelect+7]<=0)
                {


                    do{msgLine = 0;}while (0);
                    printMessage("YOU DON'T HAVE ONE!!");
                }
                else
                {
                    inventory[itemSelect+7]--;
                    do{msgLine = 0;}while (0);
                    _fs("YOU USED %" , items[itemSelect+7]);
                    printMessage(stringBuffer40);
                    if (itemSelect == 0)
                    {






                        cz = 1;
                        cx = 25;
                        cy = 13;
                        printMessage("***ZAP!!***");
                        ret = 1;
                        fillMap = 127;
                    }
                    else if (itemSelect == 1)
                    {




                        printMessage("YOU FEEL BETTER!");

                        ch = ch +RandMax(20)+1;
                        if (ch>hp) ch = hp;
                    }
                    else
                    {




                        printMessage("STRENGTH FLOWS THROUGH YOUR BODY");
                        sf[0] = RandMax(20)+11;

                    }
                    pause(75);
                }
                break;
            }
        }
        if (buttons_pressed()) break;
    }
    while (1);
    resetButtons();
    return ret;
}


void displayRound()
{



    wr2();


    Do_Sound();
    Joy_Digital2();
    check_buttons();
    dp_VIA_t1_cnt_lo = 0x7f;

    if (lightChange>0) Intensity_a((unsigned int)lightChange);
    else
    {
        if (sf[2]>0)
            Intensity_7F();
        else
            Intensity_a(0x4f);
    }
    subBank0(3);
    displayMessages();
}

void elevator()
{
    inElevator = 1;
    elevatorY=0;
    Vec_Music_Wk_7 = 0x3e;
    Vec_XXX_04 = 0xf;

    signed long int freq = 5000;

    while (inElevator)
    {
        freq = freq-5;
        Vec_XXX_08 = (signed int) (freq&0xff);
        Vec_Music_Wk_1 = *((signed int*) &freq);
        displayRound();
        freq+50;
    }
    Vec_Music_Wk_7 = 0x3f;
    Vec_XXX_04 = 0;
}



void pause(unsigned char t)
{
    while(1)
    {
        displayRound();
        if (Vec_Joy_1_X != 0) return;
        if (Vec_Joy_1_Y != 0) return;
        if (buttons_pressed() != 0) return;



        if (t == 0)
        {
            return;
        }
        t--;
    }
}


void initBox()
{
    for (int i=0; i<4;i++)
    {
        box[i] = (signed int)RandMax(4);
    }
}



void monsterOnStack(signed int m, unsigned int ml, signed long int mh)
{


    for (int i=18;i>=0;i--)
    {
        stackM[i+1] = stackM[i];
        stackML[i+1] = stackML[i];
        stackMH[i+1] = stackMH[i];
    }



    if (m==-1)
    {
        stackM[0] = -1;
        stackML[0] = 0;
        stackMH[0] = 0;
        return;
    }
    stackM[0] = (signed int)m;
    stackML[0] = ml;
    stackMH[0] = mh;
    m=-1;
    ml = 0;
    mh = 0;
}



int monsterOnStackAdvance()
{
    int ret = 0;


    m=-1;
    if (stackM[0] != -1)
    {
        ret = 1;


        m = (signed int) stackM[0];
        ml = stackML[0];
        mh = stackMH[0];
    }


    for (int i=0; i<19;i++)
    {
        stackM[i] = stackM[i+1];
        stackML[i] = stackML[i+1];
        stackMH[i] = stackMH[i+1];
    }
    stackM[19] = -1;
    stackML[19] = 0;
    stackMH[19] = 0;

    return ret;
}

int monsterOnStackEvadeFurther()
{
    monsterOnStack(-1, 0, 0);
}




void clearMonsterStack()
{
    for (int i=0;i<20;i++)
    {
        stackM[i] = -1;
        stackML[i] = 0;
        stackMH[i] = 0;
    }
}

void createCharacter()
{
    int pressed;
    rollAgain:
    for (int i=0; i<6;i++)
    {
        s[i] = RandMax(6)+1 + RandMax(6)+1 + RandMax(6)+1;
    }
    pressed = 0;
    localTimer = 250;

    do
    {
        localTimer--;
        if (localTimer == 0) goto rollAgain;
        do{_XC = -0x70;_YC = 0x70;} while(0);
        Wait_Recal();
        Do_Sound();
        check_buttons();
        check_joysticks();

        if (button_1_4_pressed()) break;
        if (buttons_pressed()) pressed = 1;
        else if (pressed) goto rollAgain;

        dp_VIA_t1_cnt_lo = (0x44);
        dp_VIA_t1_cnt_lo = 0x70;
        Intensity_a(0x5f);
        do {do {syncPrintStrd((const int)(_XC), (const int)((_YC-=0x0a)), (void *)((void* const)(("<4> TO USE STATS" "\x80"))));dp_VIA_cntl = 0xcc;;} while (0);} while (0);
        do{_YC -= 0x0a;} while(0);

        for (int i=0; i<6;i++) printfsi("%: %" , stats[i], s[i]);
    }
    while (1);

    hp = s[3];
    ch = (signed long int) hp;
    gd = 0;
    tg = 0;
    lv = 1;

    cz = 1;
    cx = 25;
    cy = 13;


    for (int i=0; i<10;i++)
    {
        inventory[i] = 0;
        sf[i] = 0;
    }
    sf[10] = 0;


    initBox();


    ex = 0;
    su = 1;
    cs = 1;





    clearMonsterStack();

    unsigned int i=0;
    do
    {
        do{_XC = -0x70;_YC = 0x70;} while(0);
        Wait_Recal();
        Do_Sound();

        dp_VIA_t1_cnt_lo = 0x70;
        Intensity_a(0x5f);
        do {do {syncPrintStrd((const int)(_XC), (const int)((_YC-=0x0a)), (void *)((void* const)(("YOU DESCEND INTO THE" "\x80"))));dp_VIA_cntl = 0xcc;;} while (0);} while (0);
        do {do {syncPrintStrd((const int)(_XC), (const int)((_YC-=0x0a)), (void *)((void* const)(("DEPTH OF TELENGARD" "\x80"))));dp_VIA_cntl = 0xcc;;} while (0);} while (0);
        do{_YC -= 0x0a;} while(0);
        do {do {syncPrintStrd((const int)(_XC), (const int)((_YC-=0x0a)), (void *)((void* const)(("BEWARE..." "\x80"))));dp_VIA_cntl = 0xcc;;} while (0);} while (0);

    }
    while (i++<160);

}
# 491 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\mainSupport.c"
int castSpell(int inCombat)
{
    unsigned int spellLevel = 0;
    unsigned int spellSelect = 0;
    unsigned int availableLevel = (lv/3);
    int lastDir = 0;
    do
    {
        Wait_Recal();
        Do_Sound();
        Joy_Digital();
        check_buttons();
        dp_VIA_t1_cnt_lo = 0x7f;

        if ((Vec_Joy_1_X > 0) && (!lastDir))
            if (spellLevel<5) spellLevel++;
        if ((Vec_Joy_1_X < 0) && (!lastDir))
            if (spellLevel>0) spellLevel--;

        if (spellLevel <= availableLevel)
        {
            Intensity_5F();
            if ((Vec_Joy_1_Y > 0) && (!lastDir))
                if (spellSelect>0) spellSelect--;
            if ((Vec_Joy_1_Y < 0) && (!lastDir))
                if (spellSelect<5) spellSelect++;

            syncPrintStrd((const int)(-0x65), (const int)(0x60-0x10*spellSelect), (void *)("-->\x80"));
            dp_VIA_cntl = 0xcc;;
        }
        else
            Intensity_3F();

        lastDir = !((Vec_Joy_1_X == 0) && (Vec_Joy_1_Y == 0));

        _fi_s("LEVEL %\x80", (unsigned int) spellLevel+1);
        syncPrintStrd((const int)(-0x20), (const int)(0x78), (void *)(stringBuffer40));
        dp_VIA_cntl = 0xcc;;

        for (unsigned int i=0;i<6;i++)
        {
            syncPrintStrd((const int)(-0x50), (const int)(0x60-0x10*i), (void *)(spellNames[spellLevel][i]));
            dp_VIA_cntl = 0xcc;;
        }

        if (button_1_1_pressed())
        {
            printMessage("ABORT");
            return 2;
        }
        if (buttons_pressed()) break;



    }
    while (1);
    do{msgLine = 0;}while (0);
    printMessage("CAST");


    if (spellLevel > availableLevel)
    {
        printMessage("YOU DON'T HAVE THAT LEVEL SPELLS!");
        return 2;
    }

    if (spellLevel > cs)
    {
        printMessage("YOU DON'T HAVE ENOUGH SPELL UNITS!");
        return 1;
    }
    do{msgLine = 0;}while (0);
    _fs("CAST: %", (void *)spellNames[spellLevel][spellSelect]);
    printMessage(stringBuffer40);

    cs=cs-spellLevel;

    if (spellLevel == 0)
    {
        if (spellSelect == 0)
        {



            tmp = (signed int) RandMax(8)+5;
            goto damageSpell;
        }
        else if (spellSelect == 1)
        {
            if (!inCombat) goto noCombatSpell;


            if (un != 0)
            {
                printMessage("UNDEAD DON'T SLEEP!");
                return 1;
            }


            if (RandMax(20)+1 > s[1] )
            {
                _fs("THE % ISN'T SLEEPY!", mo[m]);
                printMessage(stringBuffer40);
                return 1;
            }



            _fs("THE % IS SLEEPING <4> TO KILL:", mo[m]);
            printMessage(stringBuffer40);
            if (testForButton(1) != 4)
            {
                printMessage("EVADE");
                return 4;
            }



            if (RandMax(5) < 4 )
            {
                return 3;
            }
            printMessage("IT WOKE UP!");
            pause(75);
            return 1;
        }
        else if (spellSelect == 2)
        {




            printMessage("YOU FEEL BETTER");
            ch = ch + RandMax(8)+1;
            if (ch > hp) ch = hp;
            return 1;
        }
        else if (spellSelect == 3)
        {





            sf[2] = RandMax(11)+5;
            return 1;
        }
        else if (spellSelect == 4)
        {


            if (!inCombat) goto noCombatSpell;



            if (un == 0)
            {
                _fs("THE % IS INSULTED", mo[m]);
                printMessage(stringBuffer40);
                printMessage("AT BEING CALLED UNDEAD");
                return 1;
            }



            if (RandMax(20) > s[2] + lv-ml)
            {
                _fs("THE % LISTENS WITH DEAF EARS", mo[m]);
                printMessage(stringBuffer40);
                return 1;
            }

            ml=(ml+1)>>1;
            printMessage("IT RUNS IN FEAR!!");
            return 5;
        }
        else if (spellSelect == 5)
        {


            sf[3] = RandMax(11)+5;
            return 1;
        }
    }
    else if (spellLevel == 1)
    {
        if (spellSelect == 0)
        {





            if (!inCombat) goto noCombatSpell;
            if ( ((lRandMax(6)*lRandMax(5))) + ml > s[1])
            {
                _fs("THE % DODGES ASIDE!", mo[m]);
                printMessage(stringBuffer40);
                return 1;
            }



            _fs("THE % IS WEBBED <4> TO KILL:", mo[m]);
dressedToKill:
            printMessage(stringBuffer40);
            if (testForButton(1) != 4)
            {
                printMessage("EVADE");
                return 4;
            }



            if (RandMax(20)-ml > 10 )
            {
                return 3;
            }
            printMessage("IT BROKE FREE!");
            return 1;
        }
        else if (spellSelect == 1)
        {


            sf[4] = RandMax(21)+5;
            return 1;
        }
        else if (spellSelect == 2)
        {



            tmp = (signed int) RandMax(12)+3;
            goto damageSpell;
        }
        else if (spellSelect == 3)
        {


            sf[1] = RandMax(21)+5;
            return 1;
        }
        else if (spellSelect == 4)
        {


            if (!inCombat) goto noCombatSpell;


            if (un != 0)
            {
                printMessage("THE UNDEAD IGNORES YOUR WILES!");
                return 1;
            }





            if ( ((lRandMax(6)*lRandMax(5))) + 1 > s[5])
            {
                _fs("THE % RESISTS YOU!", mo[m]);
                printMessage(stringBuffer40);
                return 1;
            }



            _fs("THE % IS CHARMED <4> TO KILL:", mo[m]);
            goto dressedToKill;
        }
        else if (spellSelect == 5)
        {


            sf[0] = RandMax(21)+5;
            return 1;
        }
    }
    else if (spellLevel == 2)
    {
        if (spellSelect == 0)
        {


            printMessage("ZZZZAAAPPP!!!");



            pause(75);
            tmp = (signed int) RandMax(6*lv)+15;
            goto damageSpell;
        }
        else if (spellSelect == 1)
        {





            printMessage("YOU FEEL BETTER");
            ch = ch + RandMax(24)+1;
            if (ch > hp) ch = hp;
            return 1;
        }
        else if (spellSelect == 2)
        {


            sf[2] = RandMax(31)+5;
            return 1;
        }
        else if (spellSelect == 3)
        {


            sf[5] = RandMax(21)+5;
            return 1;

        }
        else if (spellSelect == 4)
        {


            if (!inCombat) goto noCombatSpell;



            if ( RandMax(20)+ml > s[1])
            {
                _fs("THE % IGNORES YOU!", mo[m]);
                printMessage(stringBuffer40);
                return 1;
            }




            _fs("THE % IS HELD <4> TO KILL:", mo[m]);
            printMessage(stringBuffer40);
            if (testForButton(1) != 4)
            {
                printMessage("EVADE");
                return 4;
            }







            if (RandMax(33) > 7+ml )
            {
                return 3;
            }
            printMessage("IT BROKE FREE!");
            return 1;
        }
        else if (spellSelect == 5)
        {


            if (!inCombat) goto noCombatSpell;



            if (RandMax(22)+ml >= s[1])
            {
                _fs("THE % DOESN'T BELIEVE!", mo[m]);
                printMessage(stringBuffer40);
                return 1;
            }


            printMessage("IT BELIEVES! .... ARRGH...");
            return 3;
        }
    }
    else if (spellLevel == 3)
    {
        if (spellSelect == 0)
        {


            if (inCombat)
            {
                printMessage("NOT IN MELEE!!");
                return 1;
            }
            printMessage("DIRECTION>");






            tmp2 = 0;
            localTimer = 250;

            while(1)
            {
                displayRound();
                if (localTimer == 0) tmp2 = -1;
                if (Vec_Joy_1_X>0)
                {
                    if (cx==200)
                    {
onlyStone:
                        printMessage("ONLY STONE HERE...");
                        return 1;
                    }

                    cx +=1;fillMap=3;printMessage("EAST");
                    tmp2 = 1;
                }

                if (Vec_Joy_1_X<0)
                {
                    if (cx==2) goto onlyStone;
                    cx -=1;fillMap=4;printMessage("WEST");
                    tmp2 = 2;
                }
                if (Vec_Joy_1_Y>0)
                {
                    if (cy==2) goto onlyStone;
                    cy -=1;fillMap=1;printMessage("NORTH");
                    tmp2 = 3;
                }
                if (Vec_Joy_1_Y<0)
                {
                    if (cy==200)
                    cy +=1;fillMap=2; printMessage("SOUTH");
                    tmp2 = 4;
                }

                if (button_1_4_pressed()) tmp2 = -1;
                if (button_1_3_pressed()) tmp2 = -1;
                if (button_1_2_pressed()) tmp2 = -1;
                if (button_1_1_pressed()) tmp2 = -1;

                if (tmp2 != 0) break;
                localTimer--;
            }
            if (tmp2 == -1)
            {
                printMessage("???");
            }
            else
            {
                printMessage("POOF");
            }
            return 2;
        }
        else if (spellSelect == 1)
        {


            printMessage("WHOOOOOSHH!!!");


            pause(75);
            _fs("THE % IS BURNING!", mo[m]);
            printMessage(stringBuffer40);
            tmp = (signed int) RandMax(12*lv)+15;
            goto damageSpell;
        }
        else if (spellSelect == 2)
        {



            tmp = (signed int) RandMax(32)+10;
            goto damageSpell;
        }
        else if (spellSelect == 3)
        {


            if (!inCombat) goto noCombatSpell;


            if (RandMax(10)>6)
            {
                _fs("THE % IS ISN'T AFFECTED", mo[m]);
                printMessage(stringBuffer40);
                return 1;
            }
            printMessage("ONE STONE STATUE....");
            return 3;
        }
        else if (spellSelect == 4)
        {


            sf[6] = RandMax(30)+5;
            return 1;
        }
        else if (spellSelect == 5)
        {


            printMessage("DIE!!!!!!!");
            if (!inCombat) goto noCombatSpell;



            if (un != 0)
            {
undeadAreDead:
                printMessage("UNDEAD ARE ALREADY DEAD!!");
                return 1;
            }


            ltmp = 30 + ml*4;
            ltmp = ltmp - lv*3;

            pause(75);
            if (RandMax(100) > (unsigned long int)ltmp)
                return 3;


            _fs("THE % LAUGHS!", mo[m]);
            printMessage(stringBuffer40);
            return 1;
        }
    }
    else if (spellLevel == 4)
    {
        if (spellSelect == 0)
        {
            signed long int ns;
            signed long int ew;
            signed long int upd;
            signed int sel;


            if (inCombat)
            {
                printMessage("NOT IN MELEE!!");
                return 1;
            }

            do{msgLine = 0;}while (0);
            printMessage("CAST TELEPORT");


teleportAgain:
            ns = ew = upd = sel = 0;
            do
            {
                Do_Sound();
                Joy_Digital();
                check_buttons();
                Wait_Recal();
                Intensity_5F();
                dp_VIA_t1_cnt_lo = 0x7f;

                syncPrintStrd((const int)(-0x20), (const int)(0x78), (void *)("TELEPORT!\x80"));
                syncPrintStrd((const int)(-0x40), (const int)(-0x40), (void *)("BUTTON TO FINISH\x80"));

                _fi_s_s("NORTH- SOUTH+ : %\x80", (signed int) ns);
                syncPrintStrd((const int)(-0x50), (const int)(0x50), (void *)(stringBuffer40));
                _fi_s_s("WEST- EAST+   : %\x80", (signed int) ew);
                syncPrintStrd((const int)(-0x50), (const int)(0x30), (void *)(stringBuffer40));
                _fi_s_s("UP- DOWN+     : %\x80", (signed int) upd);
                syncPrintStrd((const int)(-0x50), (const int)(0x10), (void *)(stringBuffer40));
                if (sel == 0)
                {
                     syncPrintStrd((const int)(-0x65), (const int)(0x50), (void *)("-->\x80"));
                     if ((Vec_Joy_1_X > 0) && (!lastDir)) ns+=1;
                     if ((Vec_Joy_1_X < 0) && (!lastDir)) ns-=1;
                }
                if (sel == 1)
                {
                     syncPrintStrd((const int)(-0x65), (const int)(0x30), (void *)("-->\x80"));
                     if ((Vec_Joy_1_X > 0) && (!lastDir)) ew+=1;
                     if ((Vec_Joy_1_X < 0) && (!lastDir)) ew-=1;
                }
                if (sel == 2)
                {
                     syncPrintStrd((const int)(-0x65), (const int)(0x10), (void *)("-->\x80"));
                     if ((Vec_Joy_1_X > 0) && (!lastDir)) upd+=1;
                     if ((Vec_Joy_1_X < 0) && (!lastDir)) upd-=1;
                }
                if ((Vec_Joy_1_Y > 0) && (!lastDir))
                    if (sel>0) sel--;
                if ((Vec_Joy_1_Y < 0) && (!lastDir))
                    if (sel<2) sel++;
                lastDir = !((Vec_Joy_1_X == 0) && (Vec_Joy_1_Y == 0));

                if (buttons_pressed()) break;
            }
            while (1);



            if ((((unsigned int)((ns)>0)?(ns):(-(ns)))>lv*5) || (((unsigned int)((ew)>0)?(ew):(-(ew)))>lv*5) ||(((unsigned int)((upd)>0)?(upd):(-(upd)))>lv*5) )
            {
                printMessage("TO FAR...TRY AGAIN");
                pause(75);
                goto teleportAgain;
            }




            ew += cx;
            ns += cy;
            upd += cz;
            if ( (ew<(unsigned int)1) || (ew>(unsigned int)200) ||
                 (ns<(unsigned int)1) || (ns>(unsigned int)200) || ((signed int)upd>50) )
            {
                printMessage("ONLY STONE THERE...");
                printMessage("THE SPELL FAILS...");
                return 1;
            }
            if ((signed int) upd<1)
            {
                printMessage("ONLY THIN AIR...");
                printMessage("THE SPELL FAILS...");
                return 1;
            }

            cx = (unsigned char)ew;
            cy = (unsigned char)ns;
            cz = (unsigned char)upd;
            printMessage("*** POOF! ***");
            fillMap = 127;
            return 2;
        }
        else if (spellSelect == 1)
        {


            sf[7] = RandMax(16)+5;
            return 1;
        }
        else if (spellSelect == 2)
        {


            if (!inCombat) goto noCombatSpell;

            printMessage("QWERTY!!!!!!");
            pause(75);


            if (un != 0)
            {
                goto undeadAreDead;
            }
            if (RandMax(11)>8)
            {
                _fs("THE % DOESN'T HEAR...", mo[m]);
                printMessage(stringBuffer40);
                return 1;
            }
            return 3;
        }
        else if (spellSelect == 3)
        {



            if (!inCombat) goto noCombatSpell;
            printMessage("BRRRR!!!!");
            tmp = (signed int) RandMax(60)+5;
            goto damageSpell;
        }
        else if (spellSelect == 4)
        {





            do{msgLine = 0;}while (0);
            printMessage("CAST WALL OF FIRE - WWHOOOSSH!!!");
            printMessage("A WALL OF FIRE APPEARS ABOUT YOU");
            pause(75);
            if (RandMax(10) >4)
            {
                _fs("THE % IS GONE...", mo[m]);
                printMessage(stringBuffer40);
                return 6;
            }
            _fs("THE % WALKS THROUGH!!!", mo[m]);
            printMessage(stringBuffer40);
            tmp = (signed int) RandMax(10)+15;
            goto damageSpell;
        }
        else if (spellSelect == 5)
        {


            if (!inCombat) goto noCombatSpell;

            if (un != 0) goto undeadAreDead;


            _fs("BLACK DEATH FOR THE % ", mo[m]);
            printMessage(stringBuffer40);

            if (RandMax(20)>s[2])
            {
                printMessage("IT IS IMMUNE!");
                return 1;
            }


            if ( RandMax((unsigned int)(67)) < (unsigned int) ((s[3]) +33))
            {
                return 2;
            }
            printMessage("THE SPELL BACKFIRES!!");
            return 7;
        }
    }

    else if (spellLevel == 5)
    {
        if (spellSelect == 0)
        {



            printMessage("TIME IS FROZEN, MONSTERS CANNOT");
            printMessage("ATTACK YOU");



            sf[8] = RandMax(20)+4;
            if (inCombat) return 6;
            return 1;
        }
        else if (spellSelect == 1)
        {


            sf[9] = RandMax(40)+5;
            return 1;
        }
        else if (spellSelect == 2)
        {


            if (!inCombat) goto noCombatSpell;



            if (RandMax(10+1) != 10)
            {
                return 2;
            }

            _fs("THE % DOESN'T SEE...", mo[m]);
            printMessage(stringBuffer40);
            return 1;
        }
        else if (spellSelect == 3)
        {


            if (inCombat)
            {
                printMessage("NOT IN MELEE!!");
                return 1;
            }



            for (int i=0; i<10;i++)
            {
                inventory[i] = 0;
            }
            gd = 0;
            clearMonsterStack();
            cz = 1;
            cx = 25;
            cy = 13;
            ch = hp;
            printMessage("***ZAP!!***");
            pause(75);
            return 1;
        }
        else if (spellSelect == 4)
        {


            printMessage("YOU FEEL BETTER");
            ch = hp;
            return 1;
        }
        else if (spellSelect == 5)
        {


            printMessage("A SCINILLATING SHIFTING WALL APPEARS");
            if (!inCombat) goto noCombatSpell;
            pause(75);




            _fs("THE % IS GONE...", mo[m]);
            printMessage(stringBuffer40);
            return 6;
        }
    }

    return 2;

noCombatSpell:
    printMessage("YOU JUST WASTED A COMBAT SPELL!");
    pause(75);
    return 1;
damageSpell:
    if (!inCombat) goto noCombatSpell;
    _fi_s("IT SUFFERS % HIT POINTS", (unsigned int) tmp);
    printMessage(stringBuffer40);
    mh = mh -tmp;
    if (mh <0) return 3;
    return 1;
}
# 1356 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\mainSupport.c"
extern signed long int tmp_hp;
extern unsigned int initSoundNo;
extern volatile unsigned int sfx_status_1;



void checkXP()
{







    unsigned long long int t = ((unsigned long long int)(1000))*((unsigned long long int)(((unsigned long long int)(2))<<(lv-1)));







    if (ex >= t)
    {
        printMessage("YOU WENT UP A LEVEL!");
        lv = lv +1;
        t = ((unsigned long long int)(1000))*((unsigned long long int)(((unsigned long long int)(2))<<(lv-1)));
        tmp = (signed int) (RandMax( s[3] ) + 1);


        ch += tmp;
        hp += (long signed int) tmp;
        if (ex>t) ex = t-1;



        cs = cs + lv;
        su = su +lv;

        _fi_s("YOU GAIN % HIT POINTS", (unsigned int)tmp);
        printMessage(stringBuffer40);
        return;
    }




    if (lv >1)
        t = ((unsigned long long int)(1000))*((unsigned long long int)(((unsigned long long int)(2))<<(lv-2)));
    else t = 0;
# 1417 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\mainSupport.c"
    if (ex>=t) return;



    if (lv>cs) cs = 0; else cs = cs -lv;
    su = su -lv;


    printMessage("YOU GO DOWN A LEVEL!");
    lv = lv -1;
    tmp = (signed int)(RandMax(s[3])+1);






    if ((ch<tmp) || (lv == 0))
    {
        ch=0;
        return;
    }
    ch = ch -tmp;
    hp = hp -(long signed int)tmp;
    _fi_s("YOU LOSE % HIT POINTS", (unsigned int)tmp);
    printMessage(stringBuffer40);
    return;
}

void randomXP()
{
# 1457 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\mainSupport.c"
    ltmp = (signed long int) ( ((unsigned long int)(RandMax(cz)+1))*((unsigned long int)(500)));
    if (RandMax(2) == 1)
    {

        _fl_s("YOU GAINED % EXPERIENCE POINTS", ((unsigned long int)(ltmp)));
        ex += ((unsigned long long int)(ltmp));
    }
    else
    {

        _fl_s("YOU LOST % EXPERIENCE POINTS", ((unsigned long int)(ltmp)));
        if (((unsigned long long int)(lltmp)) > ex) ex = 0;
        else
        ex -= ((unsigned long long int)(ltmp));
    }
    printMessage(stringBuffer40);
    checkXP();
}

void clearMap()
{
    for (unsigned char yy=0;yy<4;yy++)
    {
        for (unsigned char xx=0;xx<4;xx++)
        {
            screen[yy][xx] = 0xffff;
        }
    }
}

void initVars()
{
    subBank0(1);
    initString();
    lastX=0;
    lastY=0;
    clearMap();
    fillMap = 127;
    timer = 250;
    localTimer = 250;
    l = 1;

    tmp_hp = -1;
    above = 0;
    inElevator = 0;
    elevatorY = 0;
    lightChange = 0;
    specialAction = 0;
    initSoundNo = 0;
    sfx_status_1 = 0;

    printDungeon = 1;
    m = -1;
    printEnvironment = -1;
    printCharacter = 1;
    printTreasure = -1;

    printfEffect = 0;
    effectTimer = 0;
    effectOffsetY = 0;
    effectOffsetX = 0;
}
