# 1 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\main.c"
# 1 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\/../deps.h" 1
# 2 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\main.c" 2
# 58 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\main.c"
extern void subBank0(int);
# 72 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\main.c"
extern void initVars();
extern void checkXP();
extern void randomXP();
extern void setRandSeedNP();



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
# 87 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\main.c" 2
# 1 "C:\\Dev\\Vide\\C\\PeerC\\vectrex\\include/assert.h" 1




       






void _f_assert_failed(char* file, unsigned int length, unsigned long int line, char* func, char* expr, unsigned int l_expr);
# 88 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\main.c" 2



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
# 92 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\main.c" 2
# 1 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\/../globalsDef.h" 1
       
# 22 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\/../globalsDef.h"
unsigned long int screen[4][4];
unsigned int above;
unsigned int realAbove;

unsigned int inElevator;
signed int elevatorY;
signed int lightChange;
unsigned int specialAction;
unsigned int initSoundNo;


unsigned int timer;
unsigned int localTimer;






char stringBuffer4[4];
char stringBuffer6[6];
char stringBuffer12[12];
char stringBuffer40[40];
char stringBufferExtra[12];
# 66 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\/../globalsDef.h"
signed int printDungeon;

signed int printEnvironment;
signed int printTreasure;
signed int doEffectStatus;
signed int printCharacter;
signed int printfEffect;
unsigned int effectTimer;
signed int effectOffsetY;
signed int effectOffsetX;

int fillMap;
unsigned int utmp;
signed int tmp;
signed int tmp2;
unsigned long int ultmp;
signed long int ltmp;
signed long long int lltmp;







signed long int tmp_hp;
unsigned int tmp_lv;

unsigned long long tmp_ex;
unsigned long int tmp_su;

unsigned char tmp_cx;
unsigned char tmp_cy;

unsigned long long tmp_tg;

unsigned int tmp_s[6];
unsigned int tmp_inventory[10];
signed int tmp_box[4];







signed long int hp;
signed long int ch;
unsigned int lv;

unsigned long long ex;
unsigned long int su;
unsigned long int cs;



unsigned char cx;
unsigned char cy;
unsigned char cz;

unsigned long long gd;
unsigned long long tg;

unsigned int s[6];
unsigned int inventory[10];
unsigned int sf[11];

signed int box[4];





signed int m;
signed long mh;
unsigned int db;
unsigned int pa;
unsigned int dr;
unsigned int mb;
unsigned int un;
unsigned int ml;


unsigned int l;

signed int stackM[20];
unsigned int stackML[20];
signed long int stackMH[20];

int lastX;
int lastY;




int _y_;
int _x_;
# 171 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\/../globalsDef.h"
int _XC;
int _YC;




int msgLine;
char msg_1[40];
char msg_2[40];
char msg_3[40];
char msg_4[40];
char * const msg[4] = {msg_1, msg_2, msg_3, msg_4};



unsigned int _x;
unsigned int _a;
unsigned int _b;
unsigned int _c;

unsigned int __x;
unsigned int __a;
unsigned int __b;
unsigned int __c;
# 204 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\/../globalsDef.h"
unsigned char fpackX0x[5];
unsigned char fpackY0y[5];
unsigned char fpackZ0z[5];


unsigned char fpacktmp1[5];
unsigned char fpacktmp2[5];
unsigned char fpackQ[5];
# 294 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\/../globalsDef.h"
unsigned int FP0EXP;
unsigned int FPA0[4];
unsigned int FP0SGN;

unsigned int COEFCT;
unsigned int STRDES[5];
unsigned int FPCARY;


unsigned int FP1EXP;
unsigned int FPA1[4];
unsigned int FP1SGN;

unsigned int RESSGN;
unsigned int FPSBYT;
unsigned int COEFPT[2];


unsigned int _TMPTR1;
unsigned int FPA2[4];

unsigned int V40;
unsigned int V41;
unsigned int V42;
unsigned int V43;
unsigned int V44;

unsigned int V45;
unsigned int V46;
unsigned int V47;
unsigned int V48[2];


unsigned int V4A;
unsigned int V4B[2];
unsigned int V4D[2];

unsigned int VAB;
unsigned int VAC;
unsigned int VAD;
unsigned int VAE;
unsigned int TMPLOC;
unsigned int CHARAC;

volatile unsigned int sfx_status_1;
unsigned long sfx_pointer_1;
unsigned long currentSFX_1;
unsigned long sfx_doframe_intern_1;







unsigned int PLY_error;
unsigned int ACCA;
unsigned int ACCB;
unsigned int volumeRegister;
unsigned int frequencyRegister;
unsigned int r7;






unsigned int initFlag1;
unsigned int initFlag2;
unsigned int initFlag3;
unsigned long int PLY_AKY_PATTERNFRAMECOUNTER_OVER;
unsigned long int PLY_AKY_PATTERNFRAMECOUNTER;
unsigned long int PLY_AKY_CHANNEL1_PTTRACK;
unsigned long int PLY_AKY_CHANNEL2_PTTRACK;
unsigned long int PLY_AKY_CHANNEL3_PTTRACK;
unsigned int PLY_AKY_CHANNEL1_WAITBEFORENEXTREGISTERBLOCK;
unsigned int PLY_AKY_CHANNEL2_WAITBEFORENEXTREGISTERBLOCK;
unsigned int PLY_AKY_CHANNEL3_WAITBEFORENEXTREGISTERBLOCK;
unsigned long int PLY_AKY_CHANNEL1_PTREGISTERBLOCK;
unsigned long int PLY_AKY_CHANNEL2_PTREGISTERBLOCK;
unsigned long int PLY_AKY_CHANNEL3_PTREGISTERBLOCK;
unsigned int PLY_AKY_PSGREGISTER13_RETRIG;


unsigned int PLY_AKY_PSGREGISTER6;
unsigned int PLY_AKY_PSGREGISTER11;
unsigned int PLY_AKY_PSGREGISTER12;
unsigned int PLY_AKY_PSGREGISTER13;
# 93 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\main.c" 2
# 1 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\/constants.h" 1
       


const char * const mo[]=
{
    "GNOLL",
    "KOBOLD",
    "SKELETON",
    "HOBBIT",
    "ZOMBIE",
    "ORC",
    "FIGHTER",
    "MUMMY",
    "ELF",
    "GHOUL",
    "DWARF",
    "TROLL",
    "WRAITH",
    "OGRE",
    "MINOTAUR",
    "GIANT",
    "SPECTER",
    "VAMPIRE",
    "DEMON",
    "DRAGON"
};




const char * const stats[]=
{
    "STR",
    "INT",
    "WIS",
    "CON",
    "DEX",
    "CHR"
};

const char * const items[]=
{
    "SWORD",
    "ARMOR",
    "SHILED",
    "ELVEN CLOAK",
    "ELVEN BOOTS",
    "RING OF REGENERATION",
    "RING OF PROTECTION",
    "SCROLL OF RESCUE",
    "POTION OF HEALING",
    "POTION OF STRENGTH"
};
# 66 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\/constants.h"
const char * const spellNames1[] =
{
    "MAGIC MISSILE\x80",
    "SLEEP\x80",
    "CURE LIGHT WOUNDS\x80",
    "LIGHT\x80",
    "TURN UNDEAD\x80",
    "PROT/EVIL\x80"
};


const char *const spellNames2[] =
{
    "WEB\x80",
    "LEVITATE\x80",
    "CAUSE LIGHT WOUNDS\x80",
    "DETECT TRAPS\x80",
    "CHARM\x80",
    "STRENGTH\x80"
};



const char *const spellNames3[] =
{
    "LIGHTNING BOLT\x80",
    "CURE SERIOUS WOUNDS\x80",
    "CONTINUAL LIGHT\x80",
    "INVISIBILITY\x80",
    "HOLD MONSTER\x80",
    "PHANTASMAL FORCES\x80"
};


const char *const spellNames4[] =
{
    "PASS WALL\x80",
    "FIREBALL\x80",
    "CAUSE SERIOUS WOUNDS\x80",
    "FLESH TO STONE\x80",
    "FEAR\x80",
    "FINGER OF DEATH\x80"
};


const char *const spellNames5[] =
{
    "TELEPORT\x80",
    "ASTRAL WALK\x80",
    "POWER WORD KILL\x80",
    "ICE STORM\x80",
    "WALL OF FIRE\x80",
    "PLAGUE\x80"
};


const char *const spellNames6[] =
{
    "TIME STOP\x80",
    "RAISE DEAD\x80",
    "HOLY SYMBOL\x80",
    "WORD OF RECALL\x80",
    "RESTORATION\x80",
    "PRISMATIC WALL\x80"
};
const char ** const spellNames[] =
{
    (const char **const ) spellNames1,
    (const char **const ) spellNames2,
    (const char **const ) spellNames3,
    (const char **const ) spellNames4,
    (const char **const ) spellNames5,
    (const char **const ) spellNames6
};

const char *const treasure[] =
{
    "REFUSE",
    "SILVER",
    "GOLD",
    "GEMS",
    "JEWELS"
};

const char * const fountain[]=
{
    "WHITE",
    "GREEN",
    "CLEAR",
    "RED",
    "BLACK"
};

const char * const boxColors[]=
{
    "RED\x80",
    "GREEN\x80",
    "YELLOW\x80",
    "BLUE\x80"
};
# 94 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\main.c" 2
# 132 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\main.c"
extern int displayStatusPage();
extern void initBox();
extern void monsterOnStack(signed int m, unsigned int ml, signed long int mh);
extern int monsterOnStackAdvance();
extern int monsterOnStackEvadeFurther();
extern void createCharacter();
extern void clearMonsterStack();
extern void clearMap();
extern void displayRound();
extern void pause(unsigned char t);
extern int castSpell(int inCombat);
extern void elevator();





void loadCharacter()
{
}

void saveCharacter()
{

}





int testForButton(int d)
{
    signed int p = 0;
    signed int t = 0;

    localTimer = 150;
    do
    {
        displayRound();
        if (d!=0) localTimer--;

        if (localTimer == 0) break;







        if (button_1_4_pressed()) {t = 4;p = 1;}
        if (button_1_3_pressed()) {t = 3;p = 1;}
        if (button_1_2_pressed()) {t = 2;p = 1;}
        if (button_1_1_pressed()) {t = 1;p = 1;}





        if (Vec_Joy_1_X != 0) {t=5; p = 1;}
        if (Vec_Joy_1_Y != 0) {t=5; p = 1;}


        if ((p) && (Vec_Joy_1_X == 0) && (Vec_Joy_1_Y == 0) && (!buttons_pressed())) break;



    }
    while (1);

    if (t == 0) return d;
    return t;
}





int testForInput(int d)
{
    int b=0;
    signed int t = 0;
    resetButtons();
    localTimer = 150;
    do
    {
        if (d!=0) localTimer--;

        if (localTimer == 0) {t = 0; break;}
        if (button_1_4_pressed()) {t = 4; b=1;}
        if (button_1_3_pressed()) {t = 3; b=1;}
        if (button_1_2_pressed()) {t = 2; b=1;}
        if (button_1_1_pressed()) {t = 1; b=1;}

        if (Vec_Joy_1_X > 0) {t = 8; b=1;}
        if (Vec_Joy_1_X < 0) {t = 7; b=1;}
        if (Vec_Joy_1_Y > 0) {t = 5; b=1;}
        if (Vec_Joy_1_Y < 0) {t = 6; b=1;}


        if ((buttons_pressed() == 0) && (Vec_Joy_1_X==0) && (Vec_Joy_1_Y==0))
            if (t != 0) break;
        displayRound();
    }
    while (1);
    resetButtons();
    if (t == 0) return d;
    return t;
}





unsigned long int inputNumber(char * message, unsigned long int min, unsigned long int max)
{
    unsigned long long int ulltmp = (unsigned long long int) min;
    signed int maxDigit = 4;
    char *ascii = stringBuffer12;
    extern char * _ltoa(unsigned long n, char *pointer, int zeroToSpaces);
    unsigned int len = vstrlen(message)>>1;


    _ltoa(min, ascii,0);
    if (*(ascii+0) == ' ') *(ascii+0) = '0';
    if (*(ascii+1) == ' ') *(ascii+1) = '0';
    if (*(ascii+2) == ' ') *(ascii+2) = '0';
    if (*(ascii+3) == ' ') *(ascii+3) = '0';
    if (*(ascii+4) == ' ') *(ascii+4) = '0';
    *(ascii+5) = '\x80';

    if (max<10000) {ascii++; maxDigit = 3;}
    if (max<1000) {ascii++; maxDigit = 2;}
    if (max<100) {ascii++; maxDigit = 1;}
    if (max<10) {ascii++; maxDigit = 0;}

    tmp = 0;

    int lastDir = 0;
    do
    {
        Do_Sound();
        Joy_Digital();
        check_buttons();
        Wait_Recal();
        Intensity_5F();
        dp_VIA_t1_cnt_lo = 0x7f;


        if (message != 0)
        {
            syncPrintStrd((const int)(-(len*12)), (const int)(0x60), (void *)(message));dp_VIA_cntl = 0xcc;;
        }

        syncPrintStrd((const int)(-0x50), (const int)(0x20), (void *)("ENTER NUMBER:\x80")); dp_VIA_cntl = 0xcc;;

        tmp2 = Vec_Text_Width;


        Vec_Text_Width = 0x3f;
        _fl("( MAX: % )", max);
        syncPrintStrd((const int)(-0x48), (const int)(0x10), (void *)(stringBuffer40));dp_VIA_cntl = 0xcc;;
        _fl("( MIN: % )", min);
        syncPrintStrd((const int)(-0x48), (const int)(0x00), (void *)(stringBuffer40));dp_VIA_cntl = 0xcc;;

        Vec_Text_Width = 0x7f;


        syncPrintStrd((const int)(-0x30), (const int)(-0x20), (void *)(ascii));dp_VIA_cntl = 0xcc;;


        syncPrintStrd((const int)(-0x30-35+((maxDigit+1)-tmp )*0x12), (const int)(-0x2b), (void *)(" ^ \x80"));dp_VIA_cntl = 0xcc;;
        Vec_Text_Width = tmp2;

        if ((Vec_Joy_1_X > 0) && (!lastDir)) if (tmp>0) tmp--;
        if ((Vec_Joy_1_X < 0) && (!lastDir)) if (tmp<maxDigit) tmp++;

        if ((Vec_Joy_1_Y > 0) && (!lastDir))
            *(ascii+maxDigit-tmp) = *(ascii+maxDigit-tmp)+1;
        if ((Vec_Joy_1_Y < 0) && (!lastDir))
            *(ascii+maxDigit-tmp) = *(ascii+maxDigit-tmp)-1;

        if (*(ascii+maxDigit-tmp)>'9') *(ascii+maxDigit-tmp) = '0';
        if (*(ascii+maxDigit-tmp)<'0') *(ascii+maxDigit-tmp) = '9';


        ulltmp = ((unsigned long long int)(*(ascii+maxDigit)-'0'));
        if (max>=10) ulltmp += ((unsigned long long int)(*(ascii+(maxDigit-1))-'0')) * ((unsigned long long int)(10));
        if (max>=100) ulltmp += ((unsigned long long int)(*(ascii+(maxDigit-2))-'0')) * ((unsigned long long int)(100));
        if (max>=1000) ulltmp += ((unsigned long long int)(*(ascii+(maxDigit-3))-'0')) * ((unsigned long long int)(1000));
        if (max>=10000) ulltmp += ((unsigned long long int)(*(ascii+(maxDigit-4))-'0')) * ((unsigned long long int)(10000));

        if (ulltmp > ((unsigned long long int)(max)) )
        {
            _ltoa(max, stringBuffer6,0);
            vstrcpy(stringBuffer12, stringBuffer6);
        }
        if (ulltmp < ((unsigned long long int)(min)) )
        {
            _ltoa(min, stringBuffer6,0);
            vstrcpy(stringBuffer12, stringBuffer6);
        }


        lastDir = !((Vec_Joy_1_X == 0) && (Vec_Joy_1_Y == 0));
        if (buttons_pressed()) break;
    }
    while (1);
    return (unsigned long int)ulltmp;
}







int handleEncounters(int forceMonster)
{

    if (forceMonster == 30)
    {

        goto monsterSet;
    }

    if (forceMonster == 31)
    {


        goto monsterForced;
    }


    if (RandMax(100)>30) return 3;






    if (sf[8]>0) return 3;




    if ( (sf[5]>0) && (RandMax(100)>20) ) return 3;





monsterAgain:
    m = (signed int)RandMax(20);



    if ((sf[6]>0) && (m<5)) goto monsterAgain;

    if ( (RandMax(20)+1) <= inventory[3] )
    {




        do{msgLine = 0;}while (0);
        printMessage("YOU HAVE NOT BEEN NOTICED...");
        printMessage("<4> TO APPROACH:");

        if (testForButton(1) != 4)
        {

            return 3;
        }
    }

monsterSet:





    ml = RandMax(cz+1)*RandMax(2+1) + 1;
    ml = ml - RandMax(ml);
# 424 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\main.c"
    mh = (signed long) RandMax(ml*(unsigned int)m)+1;

monsterForced:






    un = 0;


    if ( (m==2) || (m==4) || (m==7) || (m==9) || (m==12) || (m==16) || (m==17)) un = 1;





    if ( (sf[7] >0) && (un == 1) && (RandMax(100)<20) )
        goto monsterAgain;
# 456 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\main.c"
    do{msgLine = 0;}while (0);
    _fsi2_s("YOU ENCOUNTER A LVL % %", ml, mo[m]);
    printMessage(stringBuffer40);
# 476 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\main.c"
    l=ml;
    tmp = 0;



    if (RandMax(100)>94)
    {
        unsigned int t = RandMax(91);
        if (t<30)
        {
            tmp = 1;
        }
        else if (t<60)
        {
            tmp = 2;
        }
        else
        {
            tmp = 3;
        }
    }
    else
    {


        if (m == 8)
        {


            if ( RandMax(100) > 4*s[5] )
            {



                tmp = 1;
            }
        }

        else if ((m == 3) && (RandMax(20) > s[5] ) )
        {
            tmp = 2;
        }


        else if ((m == 19) && (RandMax(30) < s[5] ) )
        {
            tmp = 3;
        }
    }

    if (tmp == 1)
    {
        tmp = 1;



        _fs("% LIKES YOUR BODY", mo[m]);
        printMessage(stringBuffer40);
        printMessage("HE HEALS YOU TO FULL STRENGTH");
        pause(75);
        ch = (signed long int) hp;
        return 3;
    }
    else if (tmp == 2)
    {



        _fs("% MAKES A QUICK MOVE", mo[m]);
        printMessage(stringBuffer40);
        pause(75);

        tmp = -1;



        for (int i=0; i<10; i++)
        {
            if (inventory[i] != 0)
            {
                tmp = i;
                break;
            }
        }
        if (tmp==-1)
        {
            printMessage("YOU HAVE NOTHING HE WANTS");
            printMessage("TO STEAL!");
            pause(75);
            return 3;
        }


        tmp=-1;
        do
        {
            tmp = (signed int) RandMax(10);
            if (inventory[tmp] == 0) tmp = -1;
        }
        while (tmp == -1);






        if (tmp <7)
        {
            _fs("HE STEALS YOUR %",items[tmp]);
            printMessage(stringBuffer40);
            inventory[tmp]=0;
        }
        else
        {
            _fs("HE STEALS A %",items[tmp]);
            printMessage(stringBuffer40);
            inventory[tmp] -=1;
        }
        tmp = 0;
        pause(75);
        return 3;
    }
    else if (tmp == 3)
    {


        tmp = (signed int) RandMax(7);
        if (inventory[tmp] < ml)
        {


            unsigned int c = ml - inventory[tmp];
            c = RandMax(c) + 1;
            inventory[tmp] = inventory[tmp]+c;



            _fs("THE % LIKES YOU!", mo[m]);
            printMessage(stringBuffer40);



            _fsi_s("HE GIVES YOU A %+%", items[tmp], inventory[tmp]);
            printMessage(stringBuffer40);
            tmp = 0;
            pause(75);
            return 3;
        }
    }






    if (RandMax(100) > 50+ s[4]*2) goto label3300;

    pause(75);
fightStart:
    do{msgLine = 0;}while (0);




    printMessage("FIGHT(4), CAST(3), EVADE(1)");
    localTimer = 150;
    tmp2 = 0;
    while(1)
    {
        displayRound();
        if (localTimer == 0)
        {
            break;
        }
        if (Vec_Joy_1_X>0) tmp2 = 5;
        if (Vec_Joy_1_X<0) tmp2 = 5;
        if (Vec_Joy_1_Y>0) tmp2 = 5;
        if (Vec_Joy_1_Y<0) tmp2 = 5;

        if (button_1_4_pressed()) tmp2 = 4;
        if (button_1_3_pressed()) tmp2 = 3;
        if (button_1_2_pressed()) tmp2 = 2;
        if (button_1_1_pressed()) tmp2 = 1;


        if ((!buttons_pressed()) && (tmp2))
            break;

        localTimer--;
    }

    db = 1;
    pa = 0;
    dr = 0;
    mb = 0;
    switch (tmp2)
    {
        case 0:
        {
            do{msgLine = 0;}while (0);
            printMessage("WAIT");
            goto fightStart;
        }
        case 1:
        {





            do{msgLine = 0;}while (0);
            printMessage("EVADE");
            tmp = (signed int)RandMax(18) + 1;



            if ((unsigned int)tmp >= s[4])
            {
cantEvade:


                printMessage("YOU'RE ROOTED TO THE SPOT");
                pause(50);
                goto label3300;
            }
            else
            {


doEvade:
                tmp = (signed int)RandMax(4);


                switch (tmp)
                {
                    case 0:
                    {


                        if (!(((*(((char *) (((unsigned long int *)screen)+4+1)) +1))&3) == 3))
                        {
                            fillMap=1;
                            printMessage("NORTH");
                            cy -=1;
evadeOut:



                            monsterOnStack((signed int)m, ml, mh);

                            return 1;
                        }
                    }
                    case 1:
                    {


                        if (!(((*(((char *) (((unsigned long int *)screen)+8+1)) +1))&3) == 3))
                        {
                            fillMap=2;
                            printMessage("SOUTH");
                            cy +=1;
                            goto evadeOut;
                        }
                    }
                    case 2:
                    {


                        if (!(((*(((char *) (((unsigned long int *)screen)+4+1)) +1))&12) == 12))
                        {
                            fillMap=4;
                            printMessage("WEST");
                            cx -=1;
                            goto evadeOut;
                        }
                    }
                    case 3:
                    {


                        if (!(((*(((char *) (((unsigned long int *)screen)+4+2)) +1))&12) == 12))
                        {
                            fillMap=3;
                            printMessage("EAST");
                            cx +=1;
                            goto evadeOut;
                        }
                    }
                }




                if (!(((*(((char *) (((unsigned long int *)screen)+4+1)) +1))&3) == 3))
                {
                    fillMap=1;
                    printMessage("NORTH");
                    cy -=1;
                    goto evadeOut;
                }


                if (!(((*(((char *) (((unsigned long int *)screen)+8+1)) +1))&3) == 3))
                {
                    fillMap=2;
                    printMessage("SOUTH");
                    cy +=1;
                    goto evadeOut;
                }


                if (!(((*(((char *) (((unsigned long int *)screen)+4+1)) +1))&12) == 12))
                {
                    fillMap=4;
                    printMessage("WEST");
                    cx -=1;
                    goto evadeOut;
                }
                goto cantEvade;
            }
        }
        case 2:
        {




            do{msgLine = 0;}while (0);
            if (displayStatusPage())
            {
                return 1;
            }


            goto fightStart;
        }
        case 3:
        {

            tmp2 = castSpell(1);
            if (tmp2 == 1) goto label3300;
            else if (tmp2 == 2) goto fightStart;
            else if (tmp2 == 3) goto label3220;
            else if (tmp2 == 4) goto doEvade;
            else if (tmp2 == 5) goto label3223;
            else if (tmp2 == 6) return 3;
            else if (tmp2 == 7) return 2;
            break;
        }
        case 4:
        {




            do{msgLine = 0;}while (0);
            printMessage("FIGHT");
            ltmp = RandMax(20) + lv + inventory[0] + s[0]/2;
            if (sf[0]>0) ltmp = ltmp +4;


            if (ltmp <10)
            {
                printMessage("YOU MISSED...");
            }
            else
            {




                ltmp = (signed long int) RandMax(8);
                ltmp += (signed long int) RandMax(lv*2) + inventory[0] + 1;
                if (sf[0]>0) ltmp = ltmp +5;

                _fi_s("YOU DO % POINTS DAMAGE", (unsigned int) ltmp);
                printMessage(stringBuffer40);



                mh = mh - (unsigned int)ltmp;
                if (mh <0)
                {
label3220:



                    printMessage("IT DIED...");
label3223:



                    pause(75);
                    do{msgLine = 0;}while (0);
                    ltmp = ml*(unsigned int)(m+1)*10;
                    ex = ex + (unsigned long int) ltmp;



                    _fl_s("YOU GAIN % EXPERIENCE POINTS", (unsigned long int) ltmp);
                    printMessage(stringBuffer40);
                    checkXP();
                    pause(75);



                    tmp = (signed int) RandMax(100);
                    if (tmp>50)
                        return 4;
                    return 3;
                }
            }
label3300:
            db = 1;
            pa = 0;
            dr = 0;
            mb = 0;
            goto label3330;
label3305:







            tmp = (signed int)(RandMax(20) + ml -inventory[1] - inventory[2] + mb);



            if ((m>=16) && (m<=17))
            {
                if (sf[3] > 0) tmp = tmp -6;
            }




            if (tmp < 10)
            {
                printMessage("IT MISSED...");
                goto fightStart;
            }



            ltmp = (signed long int ) (RandMax(8) + RandMax(ml*2) +1 ) *db;
            _fi_s("IT DOES % POINTS DAMAGE", (unsigned int)ltmp);
            printMessage(stringBuffer40);



label3320:
            ch = ch - ltmp;
            if (ch <1)
            {

                return 2;
            }

            pause(75);



            if ((RandMax(10) < dr) && (sf[3]) !=0)
            {




                printMessage("IT DRAINS A LEVEL!!!");
                ex = ex >>1;

                checkXP();
                if (ch==0)
                {

                    return 2;
                }
                pause(75);
            }




            if (RandMax(10) >= pa) goto fightStart;
            printMessage("YOU ARE PARALIZED!!!");
            goto label3300;

label3330:


            if (m == 12) {dr = 1; goto label3305;}



            if (m == 16) {dr = 2; goto label3305;}



            if (m == 17) {dr = 3; goto label3305;}



            if (m == 9) {pa = 5; goto label3305;}







            if (m == 18)
            {
                if (RandMax(10)>6)
                {
                    printMessage("IT USES IT'S SWORD!!!");
                    mb = 4;
                    db = 3;
                }
                else
                {
                    printMessage("IT USES IT'S WHIP!!");
                    mb = 2;
                    db = 2;
                }
                pause(75);
                do{msgLine = 0;}while (0);
                goto label3305;
            }
# 1015 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\main.c"
            if (m == 19)
            {
                if (RandMax(10)>3)
                {
                    mb = 5;
                    db = 2;
                }
                else
                {
                    printMessage("THE DRAGON BREATHS FIRE!!!");

                    specialAction = 1;

                    pause(75);
                    specialAction = 0;

                    do{msgLine = 0;}while (0);
                    ltmp = RandMax(20)*ml+1;







                    if (RandMax(20) <s[3])
                    {
                        ltmp = (ltmp>>1)+1;
                        printMessage("YOU PARTIALLY DODGE IT");
                    }
                    _fl_s("YOU BURN FOR % POINTS DAMAGE", (unsigned long int) ltmp);
                    printMessage(stringBuffer40);
                    goto label3320;
                }
            }
            goto label3305;
        }
        default:
        {
            do{msgLine = 0;}while (0);
            _fs("THE % IS NOT AMUSED", mo[m]);
            printMessage(stringBuffer40);
            goto fightStart;
        }
    }
}



int handleMovement()
{
    if ((lastX == 0) && (lastY == 0))
    {
        lastX = Vec_Joy_1_X;
        lastY = Vec_Joy_1_Y;
        return 0;
    }
    if ((Vec_Joy_1_X == 0) && (Vec_Joy_1_Y == 0))
    {
        do{msgLine = 0;}while (0);


        if (lastX>0)
        {
            if (((((*(((char *) (((unsigned long int *)screen)+4+2)) +1))&12) == 12)) && (!sf[7]))
            {
                printMessage("NO");
            }
            else
            {
                cx +=1;fillMap=3;printMessage("EAST");
            }
        }
        else if (lastX<0)
        {
            if (((((*(((char *) (((unsigned long int *)screen)+4+1)) +1))&12) == 12)) && (!sf[7]))
            {
                printMessage("NO");
            }
            else
            {
                cx -=1;fillMap=4;printMessage("WEST");
            }
        }
        else if (lastY>0)
        {
            if (((((*(((char *) (((unsigned long int *)screen)+4+1)) +1))&3) == 3)) && (!sf[7]))
            {
                printMessage("NO");
            }
            else
            {
                cy -=1;fillMap=1;printMessage("NORTH");
            }
        }
        else if (lastY<0)
        {
            if (((((*(((char *) (((unsigned long int *)screen)+8+1)) +1))&3) == 3)) && (!sf[7]))
            {
                printMessage("NO");
            }
            else
            {
                cy +=1;fillMap=2; printMessage("SOUTH");
            }
        }
        lastX = 0;
        lastY = 0;
    }



    return fillMap;
}


int handleTreasure(int fix)
{
    unsigned int tno;
    unsigned int ilv;
    unsigned int t,c;
    do{msgLine = 0;}while (0);
    if (!fix)
    {


        fix = RandMax(50) > 40;
    }
    if (!fix) return 5;




    t = 0;
    if (RandMax(100)<15) t = 1;
    c = 0;



    if (RandMax(100)>30)
    {







        tno = RandMax(5);
        printTreasure=(signed int)tno;
        _fs("YOU SEE SOME % <4> TO PICK UP", treasure[tno]);
        printMessage(stringBuffer40);




        if ((sf[1]>0) && (t) && (RandMax(10) == 0))
            printMessage("YOU DETECT TRAPS!");
        if (testForButton(1) != 4)
        {

            do{msgLine = 0;}while (0);
            printMessage("YOU LEAVE IT");
            pause(75);
            return 5;
        }


        do{msgLine = 0;}while (0);
        printMessage("SNARF IT");
        if (t)
        {




            utmp = (unsigned int) RandMax(l*3)+1;
            printMessage("IT'S TRAPPED!");
            _fi_s("YOU SUFFER % POINTS DAMAGE", (unsigned int) utmp);
            printMessage(stringBuffer40);
            ch = ch - ((unsigned int) utmp);
            if (ch<1)
            {
                pause(75);
                return 2;
            }
        }





        lltmp = (signed long long int) ((unsigned long long int) RandMax(200));
        lltmp = lltmp*l;
        lltmp = lltmp*tno;
        lltmp++;
        gd = gd + ((unsigned long long int)(lltmp));
        _fll_s("IT'S WORTH % GOLD", ((unsigned long long int) lltmp));
        printMessage(stringBuffer40);
        if (RandMax(50)<10)
        {
            pause(75);
            goto itemFound;
        }
        else
        {
            pause(75);
            return 6;
        }

    }



    if (RandMax(100)<50)
    {




        printTreasure=5;
        printMessage("YOU HAVE FOUND A TREASURE CHEST!!");
        printMessage("<4> TO OPEN IT: ");





        if ((sf[1]>0) && (t) && (RandMax(10) == 0))
            printMessage("YOU DETECT TRAPS!");



        if (testForButton(1) != 4)
        {

            do{msgLine = 0;}while (0);
            printMessage("IGNORE IT");
            pause(75);
            return 5;
        }



        do{msgLine = 0;}while (0);
        printMessage("OPEN IT");
        if (t)
        {



            ltmp = ((signed long int)RandMax(10))*((signed long int)cz)+1;
            printMessage("CHEST EXPLODES!!");
            _fl_s("YOU SUFFER % POINTS DAMAGE", (unsigned long) ltmp);
            printMessage(stringBuffer40);
            ch = ch - ((signed long int) ltmp);
            if (ch<1)
            {
                pause(75);
                return 2;
            }
        }






        if (RandMax(10)==0)
        {
            printMessage("INSIDE, THERE IS ONLY COBWEBS...");
            pause(75);
            return 6;
        }
        else
        {



            lltmp = (signed long long int) ((unsigned long long int) RandMax(100));
            lltmp = lltmp*l;
            lltmp = lltmp*10;
            lltmp++;
            gd = gd + ((unsigned long long int)(lltmp));
            _fll_s("IT'S WORTH % GOLD", ((unsigned long long int) lltmp));
            printMessage(stringBuffer40);

            pause(75);
            if (RandMax(100)<50)
            {
                return 6;
            }
            c = 1;
        }
    }
itemFound:
    do{msgLine = 0;}while (0);



    tno = RandMax(10);


    ilv = RandMax((l+1)>>2) + RandMax((l+1)>>2) + 1;

    _fsi_s("YOU SEE A % +%", items[tno], ilv);
    printMessage(stringBuffer40);




    printMessage("<4> TO PICK IT UP:");
    if (testForButton(1) != 4)
    {

        printMessage("LEAVE IT");
        pause(75);
        if ((c==1) && (RandMax(100)>50))
        {
            goto itemFound;
        }
        return 5;
    }



    if ((t) && (tno!=0))
    {




        printMessage("IT IS CURSED!!");
        pause(75);
        do{msgLine = 0;}while (0);
        utmp = RandMax(tno*5)+1;
        _fi_s("YOU SUFFER % DAMAGE POINTS", utmp);
        printMessage(stringBuffer40);
        ch = ch - ((signed long int) utmp);
        if (ch<1)
        {
            pause(75);
            return 2;
        }
        pause(75);
        return 6;
    }




    printMessage("IT'S YOURS!");
    inventory[tno]=inventory[tno]+1;
    if (tno<7)
        inventory[tno] = ilv;
    pause(75);


    if ((c==1) && (RandMax(100)>50))
    {
        goto itemFound;
    }
    return 6;
}





int handleSpecial(int fix)
{
    do{msgLine = 0;}while (0);
# 1407 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\main.c"
    if (above == 4) goto doStaircase;

    switch ((*(((char *) (((unsigned long int *)screen)+4+1)) +0)))
    {
        case 1:
        {

            if (cz != 1) goto doElevator;




            above = 4;
            goto doStaircase;
            if (cz == 1)
            {
upperInn:
                do{msgLine = 0;}while (0);
                subBank0(7);
                clearMonsterStack();


                printMessage("REENTER");
                pause(75);
                do{msgLine = 0;}while (0);
                tmp2 = (signed int)lv;
                checkXP();
                if (lv != (unsigned int) tmp2)
                    pause(75);
                return 1;
            }
            else
            {
doElevator:


                printMessage("YOU FEEL HEAVY FOR A MOMENT");
                elevator();
                cz=cz-1;
                fillMap =127;

                return 1;
            }
            break;
        }
        case 2:
        {


            if (cz == 50) goto doElevator;


            printMessage("YOU SEE A PIT");

            tmp = 0;



            if (sf[4]>0)
            {
                printMessage("YOU ARE HOVERING ABOVE A PIT");
                tmp = 1;
            }
            else
            {


                if (RandMax(20)<=s[4]+inventory[4])
                    tmp = 1;
            }
            if (tmp == 1)
            {




                printMessage("DO YOU WANT TO DESCEND? <4> YES");
                tmp = testForButton(0);
                if (tmp == 4)
                {
                    cz = cz + 1;
                    printMessage("YES");
                    return 1;
                }
                printMessage("NO");
                return 0;
            }


            printMessage("YOU FALL IN!!");
            l = 3;





            tmp = (signed int)RandMax(l*3)+1;
            _fi_s("YOU SUFFER % HIT POINTS", ((unsigned int) tmp));
            printMessage(stringBuffer40);
            ch=ch-tmp;
            if (ch<=0)
            {
                pause(75);
                return 2;
            }

            cz = cz + 1;
            return 1;
        }
        case 3:
        {




teleportNow:

            printMessage("ZZAP!! YOU'VE BEEN TELEPORTED...");
teleportAgain:







            lightChange = 0x5f;
            initSoundNo = 2;
            while (--lightChange >=1)
                displayRound();



            if (((cx+cy)&1) == 0) cz = cz -1;
            if (((cx+cy)&2) == 2) cz = cz +2;







            cx = cx+cz*8+cy*13;
            if (cx >200) cx -= (unsigned char)200;

            cy = cy+cy*6+cx*17;
            if (cy >200) cx -= (unsigned char)200;



            if (cz==0) cz = 1;
            if (cz>50) cz = 50;



            fillMap = 127;


            initSoundNo = 2;
            while (lightChange++<0x5f)
                displayRound();
            lightChange = 0;


            return 1;
        }
        case 4:
        {
doStaircase:






            printMessage("YOU HAVE FOUND A CIRCULAR STAIRWAY");



            if ((above == 4) && (cz==1))
                printMessage("YOU SEE LIGHT ABOVE");
            pause(75);
            do{msgLine = 0;}while (0);






            if ((above==4) && ((*(((char *) (((unsigned long int *)screen)+4+1)) +0))==4))
            {
                printMessage("DO YOU WANT TO <1> GO UP, <4> GO DOWN");
            }
            else if (above==4)
            {
                printMessage("DO YOU WANT TO <1> GO UP");
            }
            else if ((*(((char *) (((unsigned long int *)screen)+4+1)) +0))==4)
            {
                printMessage("DO YOU WANT TO <4> GO DOWN");
            }
            printMessage("OR STAY ON THE SAME LEVEL?");

            tmp = testForButton(2);



            if ((tmp == 4) && ((*(((char *) (((unsigned long int *)screen)+4+1)) +0))==4))
            {


                cz = cz + 1;
                printMessage("DOWN");
                pause(75);
                fillMap = 127;
                return 1;
            }



            else if ((tmp == 1) && (above==4))
            {
                cz = cz - 1;
                printMessage("UP");
                pause(75);
                fillMap = 127;



                if (((signed int) cz)<=0)
                {
                    cz=1;
                    goto upperInn;
                }

                return 1;
            }



            printMessage("STAY");
            return 7;




        }
        case 5:
        {



            printMessage("YOU HAVE FOUND A HOLY ALTAR");
            printMessage("PRESS <4> TO WORSHIP");
            tmp = testForButton(0);
            if (tmp == 4)
            {



                printMessage("PRESS <4> TO DONATE MONEY");
                tmp = testForButton(0);
                if (tmp != 4) goto noMoneyNoWorship;
                do{msgLine = 0;}while (0);

                ultmp = inputNumber("HOW MUCH GOLD?\x80", 0, 50000);



                if (((unsigned long long int)(ultmp))>gd)
                {
                    printMessage("YOU DON'T HAVE THAT MUCH!");
                    pause(75);
                    goto dirtyPaganTrash;
                }



                if (ultmp<((unsigned long int)(((unsigned long int)(50))*((unsigned long int)(cz)))))
                    goto dirtyPaganTrash;




                gd = gd - ultmp;
                tmp = (signed int)((((unsigned long long int)(ultmp))*((unsigned long long int)(100)))/ ( ((unsigned long long int)(gd))+ ((unsigned long long int)(ultmp)) ));
                if ((signed int)RandMax(100) < tmp)
                {


                    tmp2 = (signed int) RandMax(7);
                    sf[tmp2] =(unsigned int) (sf[tmp2] + RandMax((unsigned int)tmp)+(unsigned int)1);


                    printMessage("YOU HAVE BEEN HEARD");
                }
                else
                {
                    printMessage("THANK YOU FOR YOUR DONATION");
                }
                return 7;
            }

noMoneyNoWorship:


            if (RandMax(100)>70)
            {
                return 0;
            }




dirtyPaganTrash:
            printMessage("DIRTY PAGAN TRASH!");
            pause(75);
            do{msgLine = 0;}while (0);

            un = 0;
            while (un == 0)
            {
                m = (signed int)RandMax(20);
                if ( (m==2) || (m==4) || (m==7) || (m==9) || (m==12) || (m==16) || (m==17)) un = 1;
            }

            return 30;
        }
        case 6:
        {



            printMessage("YOU HAVE FOUND A FOUNTAIN");



            tmp2 = (signed int)RandMax(5);
            _fs("WITH RUNNING % WATER", fountain[tmp2]);
            printMessage(stringBuffer40);



            printMessage("PRESS <4> TO DRINK");
            tmp = testForButton(0);
            if (tmp != 4)
            {


                return 7;
            }

            do{msgLine = 0;}while (0);



            if (RandMax(100)<60)
            {


                if ((signed int)RandMax(20)< 20-tmp2*3)
                {


                    printMessage("YOU FEEL BETTER");
                    tmp = (signed int) RandMax(cz*3)+1;

                    _fi_s("YOU HEAL % HIT POINTS", (unsigned int) tmp);
                    printMessage(stringBuffer40);
                    ch = ch + ((unsigned int)tmp);
                    if (ch > hp) ch = hp;

                    return 7;
                }


                if ((signed int)RandMax(20)< tmp2*3)
                {


                    printMessage("IT'S POISON!!!");
                    tmp = (signed int)RandMax(cz*3)+1;
                    _fi_s("YOU LOSE % HIT POINTS", (unsigned int) tmp);
                    printMessage(stringBuffer40);



                    if (tmp>=ch)
                    {
                        pause(75);
                        return 2;
                    }
                    ch = ch - ((unsigned int)tmp);
                    return 7;
                }


                randomXP();
                return 7;
            }



            if (RandMax(50)>20)
            {
                printMessage("YOU FEEL REFRESHED!");
                return 7;
            }



            if (RandMax(100) > 50)
            {




                printMessage("YOU FEEL REFRESHED!");
                printMessage("ACTUALLY YOU'RE DRUNK!!");
                sf[10] = RandMax(16)+1;
                return 7;
            }



            if (RandMax(100) > 50)
            {


                printMessage("YOU HAVE BEEN DISPOSESSED!");
                for (int i=0;i<10;i++) inventory[i]=0;

                return 7;
            }




            printMessage("MAGIC POWER SURGES THROUGH YOUR BODY");
            cs = cs + RandMax(cz*4)+1;
            _fl_s("YOU NOW HAVE % SPELLS", cs);
            printMessage(stringBuffer40);
            return 7;
        }
        case 7:
        {




            printMessage("YOU CAN SEE A LARGE MISTY CUBE");
            printMessage("<4> TO WALK IN");
            tmp = testForButton(1);
            if (tmp != 4)
            {
                printMessage("IGNORE");
                return 7;
            }



            if (RandMax(100)<20)
            {


                cz = RandMax(50)+1;
            }
            else
            {




                cz = (unsigned char) inputNumber("A NUMBER FROM 1 TO 50\x80",(unsigned long int)1,(unsigned long int)50);
            }


            printMessage("YOU FLOAT IN SPACE ...");
            initSoundNo = 1;
            int soundPlay = 4;
            while (1)
            {
                if (sfx_status_1 == 0)
                {
                    if (soundPlay-- == 0) break;

                    initSoundNo = 1;
                }
                displayRound();
            }

            fillMap = 127;
            return 1;
        }
        case 8:
        {





            printMessage("YOU SEE A JEWEL ENCRUSTED THRONE");
            pause(75);
            do{msgLine = 0;}while (0);
            printMessage("DO YOU WANT TO PRY<4> SOME JEWELS,");
            printMessage("SIT<3> DOWN, READ<2> THE RUNES");
            printMessage("OR IGNORE<1> IT?");

            tmp = testForButton(1);
            do{msgLine = 0;}while (0);
            if (tmp == 1)
            {
                printMessage("IGNORE");
                return 7;
            }


            if (tmp == 4)
            {


                printMessage("PRY");



                if (RandMax(100) >40)
                {
throneNothingHappens:


                    printMessage("NOTHING HAPPENS");
                    return 7;
                }




                printMessage("THEY POP INTO YOUR GREEDY HANDS!!");
                ultmp = ((unsigned long int)(RandMax(100)+1))*((unsigned long int)(10))*((unsigned long int)(cz));
                gd = gd + ((unsigned long long int)(ultmp));
                _fl_s("THEY ARE WORT % GOLD", ultmp);
                printMessage(stringBuffer40);
                pause(75);
                return 7;
            }


            if (tmp == 3)
            {


                printMessage("SIT");
                pause(75);
                if (RandMax(100) >70)
                {
createAKing:

                    m = (signed int)RandMax(20);

                    _fs("THE % KING RETURNS", mo[m]);
                    printMessage(stringBuffer40);


                    ml = RandMax(5)*cz+5;

                    mh = (signed long int) (((unsigned long int)(RandMax(ml)+1))*((unsigned long int)(m)));
                    pause(75);
                    return 31;
                }



                if (RandMax(100) >60)
                {
                    goto throneNothingHappens;
                }



                if (RandMax(100) >40)
                {
                    goto teleportNow;
                }

                printMessage("A LOUD GONG SOUNDS!");
                if (RandMax(100) > 50)
                {



                    ex = ex >> 1;
                    checkXP();
                    if (ch==0)
                    {

                        return 2;
                    }
                    return 7;
                }



                if (lv>cz) goto throneNothingHappens;


                ex = ((unsigned long long int)(1000))*((unsigned long long int)(((unsigned long long int)(2))<<(lv-1))) + 1;
                checkXP();
                return 7;
            }


            if (tmp == 2)
            {

                printMessage("READ");



                if (RandMax(100) >70) goto createAKing;



                if (RandMax(20)>=s[1])
                {


                    printMessage("YOU DON'T UNDERSTAND THEM...");
                    return 7;
                }



                printMessage("A MYSTERIOUS MAGIG GRIPS YOU..");


throneRoleStatAgain:
                tmp = (signed int)RandMax(6);
                if (RandMax(100) > 50)
                {

                    if (s[tmp] <= 3) goto throneRoleStatAgain;



                    s[tmp] = s[tmp] - 1;
                    _fs("YOU % GOES DOWN BY 1", stats[tmp]);
                }
                else
                {

                    if (s[tmp] >= 18) goto throneRoleStatAgain;


                    s[tmp] = s[tmp] + 1;
                    _fs("YOU % GOES UP BY 1", stats[tmp]);
                }
                printMessage(stringBuffer40);
                return 7;
            }
            break;
        }
        case 9:
        {






            printMessage("YOU SEE A SMALL BOX WITH FOUR COLORED");
            printMessage("LIGHTS. PUSH<4> BUTTONS OR IGNORE:");

            specialAction = 2;
            tmp = testForButton(1);
            specialAction = 0;


            if (tmp != 4)
            {
                printMessage("IGNORE");
                return 7;
            }




            unsigned int cb = 0;
boxAgain:
            do{msgLine = 0;}while (0);
            printMessage("PUSH (UP/DOWN/LEFT/RIGHT)");
            printMessage("<U>RED, <D>GREEN, <L>YELLOW, <R>BLUE");
            printMessage("BUTTON TO STOP");
# 2115 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\main.c"
            pause(75);



            tmp = (signed int) testForInput(0);
            do{msgLine = 0;}while (0);
            resetButtons();
            resetJoystick();
            if (tmp<5)
            {
                printMessage("STOP");
                return 7;
            }
# 2138 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\main.c"
            printMessage((char *) boxColors[tmp-5]);





            if (box[cb] != tmp-5)
            {


                tmp = (signed int) RandMax(2*cz)+1;
                printMessage("AN ELECTRIC BOLT SHOOTS THROUGH YOU!!");


                _fi_s("YOU SUFFER % POINTS DAMAGE", (unsigned int) tmp);
                printMessage(stringBuffer40);


                if (ch<=tmp)
                {
                    pause(75);
                    return 2;
                }

                return 7;
            }


            pause(75);
            cb++;
            if (cb <4) goto boxAgain;



            do{msgLine = 0;}while (0);
            printMessage("IT OPENS!!");
            printMessage("INSIDE YOU FIND JEWELS WORTH");




            initBox();
            lltmp =(signed long long int) (((unsigned long long int)(RandMax(20)+1)) * ((unsigned long long int)(1000)) * ((unsigned long long int)(cz))* ((unsigned long long int)(cz)) );
            _fll_s("% IN GOLD!!", ((unsigned long long int)(lltmp)));
            printMessage(stringBuffer40);
            gd = gd + ((unsigned long long int)(lltmp));
            return 7;
        }
        default:
        {
            break;
        }
    }
    return 0;
}

int main(void)
{
restart:
    initVars();

    subBank0(0);

    Vec_Text_HW = 0xfa50;
    _x = Vec_Loop_Count_lo;
    setRandSeedNP();


    createCharacter();
# 2218 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\main.c"
    unsigned int turnStarting = 1;
    while(1)
    {




        displayRound();

        if (turnStarting)
        {
            turnStarting = 0;
            l = cz;





            tmp = 0;

monsterReturns:
            tmp = handleEncounters(tmp);
            m=-1;
            ml = 0;
            mh = 0;
            if (tmp== 1)
            {
                tmp = 0;
                pause(75);
                goto newTurnStart;
            }
            else if (tmp == 2)
            {
                tmp = 0;
                goto playerDead;
            }
            else if (tmp == 3)
            {
                tmp = 0;

            }
            else if (tmp == 4)
            {


                tmp = 1;
            }
            else if (tmp == 5)
            {
                tmp = 0;


                goto handleSpecial;
            }




            tmp = handleTreasure(tmp);
            printTreasure=-1;

            if (tmp == 2)
            {
                tmp = 0;
                goto playerDead;
            }
            else if (tmp == 6)
            {

                if (monsterOnStackAdvance() != 0)
                {
                    tmp = 31;
                    goto monsterReturns;
                }

            }
            else if (tmp == 5)
            {
                tmp = 0;

            }



handleSpecial:
            tmp = handleSpecial(tmp);
            if (tmp == 7)
            {
                tmp = 0;
                pause(75);
            }
            else if (tmp == 1)
            {
                tmp = 0;
                pause(75);
                goto newTurnStart;
            }
            else if (tmp == 2)
            {
                tmp = 0;
                goto playerDead;
            }
            else if (tmp == 30)
            {

                tmp = 0;
                goto monsterReturns;

            }
            else if (tmp == 31)
            {

                tmp = 31;
                goto monsterReturns;

            }
        }

        do{msgLine = 0;}while (0);
        printMessage(">");






        tmp = handleMovement();
        if (tmp)
        {
            monsterOnStackEvadeFurther();
            pause(25);
            goto newTurnStart;
        }
# 2366 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\main.c"
        if (button_1_4_pressed()) timer = 0;
        else if (button_1_3_pressed())
        {
            castSpell(0);
            pause(75);
            timer = 0;
            tmp = 1;
        }
        else if (button_1_2_pressed())
        {
            displayStatusPage();
        }
# 2386 "C:\\Dev\\Vide\\projects\\Telengard\\source\\bank1\\main.c"
        if ((timer == 0) || (tmp))
        {
            if (!tmp)
            {
                do{msgLine = 0;}while (0);
                printMessage("STAY...");
                pause(25);

                tmp = monsterOnStackAdvance();
                if (tmp != 0)
                {
                    tmp = 31;
                    goto monsterReturns;
                }

            }


newTurnStart:
            turnStarting = 1;
            m = -1;
            mh = 0;
            timer = 150;







            for (int i=0; i<11;i++)
            {
                if (sf[i] != 0)
                    sf[i] = sf[i]-1;
            }




            if ((inventory[5]) && ((unsigned int)ch != hp))
            {
                ch=ch+inventory[5];
                if ((unsigned int)ch>hp) ch=(signed int)hp;
            }
        }
        timer--;
    }
playerDead:
    if (msgLine == 3)
    {
        pause(75);
        do{msgLine = 0;}while (0);
    }
    initSoundNo = 5;
    printMessage("YOU DIED!!");
    pause(75);


    printCharacter = 0;
    printTreasure = -1;
    printDungeon = 0;
    m = -1;

    int stage =0;
    int b=0;
    Vec_Text_HW = 0xfa50;
    while (1)
    {
        do{_XC = -0x70;_YC = 0x70;} while(0);
        Do_Sound();
        Wait_Recal();
        check_buttons();

        dp_VIA_t1_cnt_lo = 0x70;
        Intensity_a(0x5f);

        if (lv<4) do {do {syncPrintStrd((const int)(_XC), (const int)((_YC-=0x0a)), (void *)((void* const)(("ANOTHER NOT SO " "\x80"))));dp_VIA_cntl = 0xcc;;} while (0);} while (0);
        else do {do {syncPrintStrd((const int)(_XC), (const int)((_YC-=0x0a)), (void *)((void* const)(("ANOTHER" "\x80"))));dp_VIA_cntl = 0xcc;;} while (0);} while (0);
        do {do {syncPrintStrd((const int)(_XC), (const int)((_YC-=0x0a)), (void *)((void* const)(("MIGHTY ADVENTURER" "\x80"))));dp_VIA_cntl = 0xcc;;} while (0);} while (0);
        do {do {syncPrintStrd((const int)(_XC), (const int)((_YC-=0x0a)), (void *)((void* const)(("BITES THE DUST" "\x80"))));dp_VIA_cntl = 0xcc;;} while (0);} while (0);
        do{_YC -= 0x0a;} while(0);
        if (stage == 0)
        {
            do {do {syncPrintStrd((const int)(_XC), (const int)((_YC-=0x0a)), (void *)((void* const)(("DO YOU WANT TO " "\x80"))));dp_VIA_cntl = 0xcc;;} while (0);} while (0);
            do {do {syncPrintStrd((const int)(_XC), (const int)((_YC-=0x0a)), (void *)((void* const)(("TRY AGAIN? <1-4>" "\x80"))));dp_VIA_cntl = 0xcc;;} while (0);} while (0);
            if (buttons_pressed()) b=1;
            if ((!buttons_pressed()) && (b==1)) {stage = 1; b=0; goto overstepPrint;}
        }

        if (stage == 1)
        {
            if (tmp_hp == -1) break;
            do {do {syncPrintStrd((const int)(_XC), (const int)((_YC-=0x0a)), (void *)((void* const)(("DO YOU WANT TO " "\x80"))));dp_VIA_cntl = 0xcc;;} while (0);} while (0);
            do {do {syncPrintStrd((const int)(_XC), (const int)((_YC-=0x0a)), (void *)((void* const)(("LOAD A CHARACTER? <4>" "\x80"))));dp_VIA_cntl = 0xcc;;} while (0);} while (0);
            if (buttons_pressed()) b=1;
            if (button_1_4_pressed()) {b = 4;}
            if ((!buttons_pressed()) && (b!=0))
            {
                if (b==4)
                {



                    ltmp = tmp_hp;
                    initVars();
                    hp = tmp_hp = ltmp;
                    lv = tmp_lv;

                    ex = tmp_ex;
                    su = tmp_su;

                    cx = tmp_cx;
                    cy = tmp_cy;

                    tg = tmp_tg;
                    for (int i=0;i<6;i++) s[i] = tmp_s[i];
                    for (int i=0;i<10;i++) inventory[i] = tmp_inventory[i];
                    for (int i=0;i<4;i++) box[i] = tmp_box[i];
                    printMessage("CHARACTER LOADED");

                    ch = (signed long int) hp;
                    gd = 0;
                    cz = 1;
                    cs = su;

                    for (int i=0; i<11;i++) sf[i] = 0;
                    clearMonsterStack();
                    _x = Vec_Loop_Count_lo;
                    setRandSeedNP();

                    goto newTurnStart;
                }
                break;
            }
        }
overstepPrint:
        subBank0(3);
    }

    goto restart;



    return 0;
}
