.class public Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;
.super Ljava/lang/Object;
.source "PerformanceModeViewHelper.java"


# static fields
.field private static final COMMON_CURVE:[F

.field private static final MODE_AUTO:I = 0x0

.field private static final MODE_CPU:I = 0x2

.field private static final MODE_CPU_GPU:I = 0x3

.field private static final MODE_GPU:I = 0x1


# instance fields
.field private final COLORS:[I

.field private final ITEMs_AUTO_GUANGDAI:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private final ITEMs_AUTO_IN:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private final ITEMs_AUTO_OUT:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private final ITEMs_CPU_GPU_IN:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private final ITEMs_CPU_GPU_OUT:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private final ITEMs_CPU_IN:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private final ITEMs_CPU_OUT:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private final ITEMs_GPU_IN:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private final ITEMs_GPU_OUT:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private final ITEMs_LEFT_DATA:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private final ITEMs_LEFT_RIGHT_IN:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private final ITEMs_LEFT_RIGHT_OUT:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private final ITEMs_LOGO_LIGHT:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private final ITEMs_RIGHT_DATA:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private LINEDELAY:F

.field private final LOGO_MASK_PERCENT:I

.field private final XUANZHUAN_COLORS:[I

.field m_In_LeftRight:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

.field m_Left_Data:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

.field m_Logo_Light:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

.field m_Out_LeftRight:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

.field m_Right_Data:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

.field m_autoIn:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

.field m_autoOut:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

.field m_auto_guangdai:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

.field private m_auto_mode_line:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private m_auto_mode_line_alpha:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field m_cpuIn:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

.field m_cpuOut:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

.field private m_cpu_gpu_light_left_out:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private m_cpu_gpu_light_right_out:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private m_cpu_gpu_mode_line:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private m_cpu_gpu_mode_line_alpha:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private m_cpu_gpu_normal_left_out:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private m_cpu_gpu_normal_right_out:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private m_cpu_mode_line:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private m_cpu_mode_line_alpha:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field m_cpugpuIn:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

.field m_cpugpuOut:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

.field private m_curMode:I

.field m_gpuIn:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

.field m_gpuOut:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

.field private m_gpu_mode_line:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private m_gpu_mode_line_alpha:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private m_guangdai:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private m_guanghuan:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private m_left_data_in:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private m_left_data_out:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private m_lineWidth:I

.field private m_logo_light_in_out:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private m_modeTextView:Landroid/widget/TextView;

.field private m_right_data_in:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private m_right_data_out:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

.field private final m_root:Landroid/view/View;

.field private m_xuanzhuan:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 156
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->COMMON_CURVE:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3e6147ae    # 0.22f
        0x3e2e147b    # 0.17f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 28
    .param p1, "root"    # Landroid/view/View;

    move-object/from16 v0, p0

    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v1, -0x1

    iput v1, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_curMode:I

    .line 28
    const v2, 0x3f19999a    # 0.6f

    iput v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->LINEDELAY:F

    .line 35
    iput v1, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_lineWidth:I

    .line 43
    const/4 v1, 0x5

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    iput-object v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->COLORS:[I

    .line 46
    const/16 v2, 0x47

    iput v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->LOGO_MASK_PERCENT:I

    .line 62
    new-array v2, v1, [I

    fill-array-data v2, :array_1

    iput-object v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->XUANZHUAN_COLORS:[I

    .line 158
    new-instance v2, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string/jumbo v5, "translationX"

    const/4 v10, 0x2

    new-array v6, v10, [F

    fill-array-data v6, :array_2

    const v4, 0x3080008

    const/4 v7, 0x0

    const/16 v8, 0x320

    const/16 v9, 0xfa

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    iput-object v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_auto_mode_line:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 159
    new-instance v2, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string/jumbo v13, "translationX"

    new-array v14, v10, [F

    fill-array-data v14, :array_3

    const v12, 0x3080049

    const/4 v15, 0x0

    const/16 v16, 0x320

    const/16 v17, 0xfa

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    iput-object v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_gpu_mode_line:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 160
    new-instance v2, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string/jumbo v5, "translationX"

    new-array v6, v10, [F

    fill-array-data v6, :array_4

    const v4, 0x308002d

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    iput-object v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpu_mode_line:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 161
    new-instance v2, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string/jumbo v13, "translationX"

    new-array v14, v10, [F

    fill-array-data v14, :array_5

    const v12, 0x3080023

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    iput-object v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpu_gpu_mode_line:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 162
    new-instance v2, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v5, "alpha"

    new-array v6, v10, [F

    fill-array-data v6, :array_6

    const v4, 0x3080008

    const/16 v8, 0x96

    const/16 v9, 0x15e

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    iput-object v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_auto_mode_line_alpha:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 163
    new-instance v2, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v13, "alpha"

    new-array v14, v10, [F

    fill-array-data v14, :array_7

    const v12, 0x3080049

    const/16 v16, 0x96

    const/16 v17, 0x15e

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    iput-object v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_gpu_mode_line_alpha:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 164
    new-instance v2, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v5, "alpha"

    new-array v6, v10, [F

    fill-array-data v6, :array_8

    const v4, 0x308002d

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    iput-object v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpu_mode_line_alpha:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 165
    new-instance v2, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v13, "alpha"

    new-array v14, v10, [F

    fill-array-data v14, :array_9

    const v12, 0x3080023

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    iput-object v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpu_gpu_mode_line_alpha:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 167
    new-instance v2, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v5, "cust_moveY"

    new-array v6, v10, [F

    fill-array-data v6, :array_a

    const v4, 0x3080098

    const/16 v8, 0x320

    const/16 v9, 0x320

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    iput-object v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_guangdai:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 168
    new-instance v2, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v13, "cust_moveY"

    new-array v14, v10, [F

    fill-array-data v14, :array_b

    const v12, 0x3080099

    const/16 v16, 0x320

    const/16 v17, 0x2bc

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    iput-object v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_guanghuan:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 169
    new-instance v2, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string/jumbo v5, "rotation"

    new-array v6, v10, [F

    fill-array-data v6, :array_c

    const v4, 0x308009b

    const/16 v8, 0x3e8

    const/16 v9, 0xfa

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    iput-object v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_xuanzhuan:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 170
    new-array v2, v10, [Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    iget-object v3, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_guangdai:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_guanghuan:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iput-object v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->ITEMs_AUTO_GUANGDAI:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 174
    const/4 v2, 0x7

    new-array v3, v2, [Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    new-instance v6, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v13, "alpha"

    new-array v14, v10, [F

    fill-array-data v14, :array_d

    const v12, 0x308000b

    const/16 v16, 0x96

    const/16 v17, 0x64

    move-object v11, v6

    invoke-direct/range {v11 .. v17}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v6, v3, v4

    new-instance v6, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v20, "alpha"

    new-array v7, v10, [F

    fill-array-data v7, :array_e

    const v19, 0x308000a

    const/16 v22, 0x0

    const/16 v23, 0x96

    const/16 v24, 0x64

    move-object/from16 v18, v6

    move-object/from16 v21, v7

    invoke-direct/range {v18 .. v24}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v6, v3, v5

    new-instance v6, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v13, "alpha"

    new-array v14, v10, [F

    fill-array-data v14, :array_f

    const v12, 0x3080009

    move-object v11, v6

    invoke-direct/range {v11 .. v17}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v6, v3, v10

    new-instance v6, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v20, "alpha"

    new-array v7, v10, [F

    fill-array-data v7, :array_10

    const v19, 0x3080007

    move-object/from16 v18, v6

    move-object/from16 v21, v7

    invoke-direct/range {v18 .. v24}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    const/4 v7, 0x3

    aput-object v6, v3, v7

    new-instance v6, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v13, "alpha"

    new-array v14, v10, [F

    fill-array-data v14, :array_11

    const v12, 0x3080005

    move-object v11, v6

    invoke-direct/range {v11 .. v17}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    const/4 v8, 0x4

    aput-object v6, v3, v8

    iget-object v6, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_auto_mode_line:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    aput-object v6, v3, v1

    iget-object v6, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_auto_mode_line_alpha:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const/4 v9, 0x6

    aput-object v6, v3, v9

    iput-object v3, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->ITEMs_AUTO_IN:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 183
    const/16 v3, 0x9

    new-array v6, v3, [Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    new-instance v18, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v13, "alpha"

    new-array v14, v10, [F

    fill-array-data v14, :array_12

    const v12, 0x3080030

    move-object/from16 v11, v18

    invoke-direct/range {v11 .. v17}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v18, v6, v4

    new-instance v11, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v21, "alpha"

    new-array v12, v10, [F

    fill-array-data v12, :array_13

    const v20, 0x308002f

    const/16 v23, 0x0

    const/16 v24, 0x96

    const/16 v25, 0x64

    move-object/from16 v19, v11

    move-object/from16 v22, v12

    invoke-direct/range {v19 .. v25}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v11, v6, v5

    new-instance v11, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v15, "alpha"

    new-array v12, v10, [F

    fill-array-data v12, :array_14

    const v14, 0x308002e

    const/16 v17, 0x0

    const/16 v18, 0x96

    const/16 v19, 0x64

    move-object v13, v11

    move-object/from16 v16, v12

    invoke-direct/range {v13 .. v19}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v11, v6, v10

    new-instance v11, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v22, "alpha"

    new-array v12, v10, [F

    fill-array-data v12, :array_15

    const v21, 0x308002c

    const/16 v24, 0x0

    const/16 v25, 0x96

    const/16 v26, 0x64

    move-object/from16 v20, v11

    move-object/from16 v23, v12

    invoke-direct/range {v20 .. v26}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v11, v6, v7

    new-instance v11, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v15, "alpha"

    new-array v12, v10, [F

    fill-array-data v12, :array_16

    const v14, 0x308002a

    move-object v13, v11

    move-object/from16 v16, v12

    invoke-direct/range {v13 .. v19}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v11, v6, v8

    iget-object v11, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpu_mode_line:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    aput-object v11, v6, v1

    iget-object v11, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpu_mode_line_alpha:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    aput-object v11, v6, v9

    iget-object v11, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_xuanzhuan:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    aput-object v11, v6, v2

    new-instance v11, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v14, "alpha"

    new-array v15, v10, [F

    fill-array-data v15, :array_17

    const v13, 0x308009b

    const/16 v16, 0x0

    const/16 v17, 0xfa

    const/16 v18, 0x64

    move-object v12, v11

    invoke-direct/range {v12 .. v18}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    const/16 v12, 0x8

    aput-object v11, v6, v12

    iput-object v6, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->ITEMs_CPU_IN:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 194
    new-array v6, v3, [Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    new-instance v11, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v15, "alpha"

    new-array v14, v10, [F

    fill-array-data v14, :array_18

    const v16, 0x308004c

    const/16 v17, 0x0

    const/16 v18, 0x96

    move-object v13, v11

    move-object/from16 v20, v14

    move/from16 v14, v16

    move-object/from16 v16, v20

    invoke-direct/range {v13 .. v19}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v11, v6, v4

    new-instance v11, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v23, "alpha"

    new-array v13, v10, [F

    fill-array-data v13, :array_19

    const v22, 0x308004b

    const/16 v25, 0x0

    const/16 v26, 0x96

    const/16 v27, 0x64

    move-object/from16 v21, v11

    move-object/from16 v24, v13

    invoke-direct/range {v21 .. v27}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v11, v6, v5

    new-instance v11, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v16, "alpha"

    new-array v13, v10, [F

    fill-array-data v13, :array_1a

    const v15, 0x308004a

    const/16 v18, 0x0

    const/16 v19, 0x96

    const/16 v20, 0x64

    move-object v14, v11

    move-object/from16 v17, v13

    invoke-direct/range {v14 .. v20}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v11, v6, v10

    new-instance v11, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v23, "alpha"

    new-array v13, v10, [F

    fill-array-data v13, :array_1b

    const v22, 0x3080048

    move-object/from16 v21, v11

    move-object/from16 v24, v13

    invoke-direct/range {v21 .. v27}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v11, v6, v7

    new-instance v11, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v16, "alpha"

    new-array v13, v10, [F

    fill-array-data v13, :array_1c

    const v15, 0x3080046

    move-object v14, v11

    move-object/from16 v17, v13

    invoke-direct/range {v14 .. v20}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v11, v6, v8

    iget-object v11, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_gpu_mode_line:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    aput-object v11, v6, v1

    iget-object v11, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_gpu_mode_line_alpha:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    aput-object v11, v6, v9

    iget-object v11, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_xuanzhuan:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    aput-object v11, v6, v2

    new-instance v11, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v15, "alpha"

    new-array v14, v10, [F

    fill-array-data v14, :array_1d

    const v16, 0x308009b

    const/16 v17, 0x0

    const/16 v18, 0xfa

    const/16 v19, 0x64

    move-object v13, v11

    move-object/from16 v20, v14

    move/from16 v14, v16

    move-object/from16 v16, v20

    invoke-direct/range {v13 .. v19}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v11, v6, v12

    iput-object v6, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->ITEMs_GPU_IN:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 205
    new-array v3, v3, [Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    new-instance v6, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v15, "alpha"

    new-array v11, v10, [F

    fill-array-data v11, :array_1e

    const v14, 0x3080026

    const/16 v18, 0x96

    move-object v13, v6

    move-object/from16 v16, v11

    invoke-direct/range {v13 .. v19}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v6, v3, v4

    new-instance v6, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v22, "alpha"

    new-array v11, v10, [F

    fill-array-data v11, :array_1f

    const v21, 0x3080025

    const/16 v24, 0x0

    const/16 v25, 0x96

    const/16 v26, 0x64

    move-object/from16 v20, v6

    move-object/from16 v23, v11

    invoke-direct/range {v20 .. v26}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v6, v3, v5

    new-instance v6, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v15, "alpha"

    new-array v11, v10, [F

    fill-array-data v11, :array_20

    const v14, 0x3080024

    move-object v13, v6

    move-object/from16 v16, v11

    invoke-direct/range {v13 .. v19}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v6, v3, v10

    new-instance v6, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v22, "alpha"

    new-array v11, v10, [F

    fill-array-data v11, :array_21

    const v21, 0x3080022

    move-object/from16 v20, v6

    move-object/from16 v23, v11

    invoke-direct/range {v20 .. v26}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v6, v3, v7

    new-instance v6, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v15, "alpha"

    new-array v11, v10, [F

    fill-array-data v11, :array_22

    const v14, 0x3080020

    move-object v13, v6

    move-object/from16 v16, v11

    invoke-direct/range {v13 .. v19}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v6, v3, v8

    iget-object v6, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpu_gpu_mode_line:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    aput-object v6, v3, v1

    iget-object v6, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpu_gpu_mode_line_alpha:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    aput-object v6, v3, v9

    iget-object v6, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_xuanzhuan:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    aput-object v6, v3, v2

    new-instance v2, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v15, "alpha"

    new-array v6, v10, [F

    fill-array-data v6, :array_23

    const v14, 0x308009b

    const/16 v18, 0xfa

    move-object v13, v2

    move-object/from16 v16, v6

    invoke-direct/range {v13 .. v19}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v2, v3, v12

    iput-object v3, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->ITEMs_CPU_GPU_IN:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 216
    new-array v2, v1, [Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    new-instance v3, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v13, "alpha"

    new-array v14, v10, [F

    fill-array-data v14, :array_24

    const v12, 0x308000b

    const/4 v15, 0x0

    const/16 v16, 0x96

    const/16 v17, 0x64

    move-object v11, v3

    invoke-direct/range {v11 .. v17}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v3, v2, v4

    new-instance v3, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v20, "alpha"

    new-array v6, v10, [F

    fill-array-data v6, :array_25

    const v19, 0x308000a

    const/16 v22, 0x0

    const/16 v23, 0x96

    const/16 v24, 0x64

    move-object/from16 v18, v3

    move-object/from16 v21, v6

    invoke-direct/range {v18 .. v24}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v3, v2, v5

    new-instance v3, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v13, "alpha"

    new-array v14, v10, [F

    fill-array-data v14, :array_26

    const v12, 0x3080007

    move-object v11, v3

    invoke-direct/range {v11 .. v17}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v3, v2, v10

    new-instance v3, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v20, "alpha"

    new-array v6, v10, [F

    fill-array-data v6, :array_27

    const v19, 0x3080009

    move-object/from16 v18, v3

    move-object/from16 v21, v6

    invoke-direct/range {v18 .. v24}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v3, v2, v7

    new-instance v3, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v13, "alpha"

    new-array v14, v10, [F

    fill-array-data v14, :array_28

    const v12, 0x3080005

    move-object v11, v3

    invoke-direct/range {v11 .. v17}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v3, v2, v8

    iput-object v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->ITEMs_AUTO_OUT:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 223
    new-array v2, v9, [Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    new-instance v3, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v13, "alpha"

    new-array v14, v10, [F

    fill-array-data v14, :array_29

    const v12, 0x3080030

    move-object v11, v3

    invoke-direct/range {v11 .. v17}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v3, v2, v4

    new-instance v3, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v20, "alpha"

    new-array v6, v10, [F

    fill-array-data v6, :array_2a

    const v19, 0x308002f

    move-object/from16 v18, v3

    move-object/from16 v21, v6

    invoke-direct/range {v18 .. v24}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v3, v2, v5

    new-instance v3, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v13, "alpha"

    new-array v14, v10, [F

    fill-array-data v14, :array_2b

    const v12, 0x308002c

    move-object v11, v3

    invoke-direct/range {v11 .. v17}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v3, v2, v10

    new-instance v3, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v20, "alpha"

    new-array v6, v10, [F

    fill-array-data v6, :array_2c

    const v19, 0x308002e

    move-object/from16 v18, v3

    move-object/from16 v21, v6

    invoke-direct/range {v18 .. v24}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v3, v2, v7

    new-instance v3, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v13, "alpha"

    new-array v14, v10, [F

    fill-array-data v14, :array_2d

    const v12, 0x308002a

    move-object v11, v3

    invoke-direct/range {v11 .. v17}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v3, v2, v8

    new-instance v3, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v20, "alpha"

    new-array v6, v10, [F

    fill-array-data v6, :array_2e

    const v19, 0x308009b

    const/16 v24, 0x0

    move-object/from16 v18, v3

    move-object/from16 v21, v6

    invoke-direct/range {v18 .. v24}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v3, v2, v1

    iput-object v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->ITEMs_CPU_OUT:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 231
    new-array v2, v9, [Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    new-instance v3, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v13, "alpha"

    new-array v14, v10, [F

    fill-array-data v14, :array_2f

    const v12, 0x308004c

    move-object v11, v3

    invoke-direct/range {v11 .. v17}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v3, v2, v4

    new-instance v3, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v20, "alpha"

    new-array v6, v10, [F

    fill-array-data v6, :array_30

    const v19, 0x308004b

    const/16 v24, 0x64

    move-object/from16 v18, v3

    move-object/from16 v21, v6

    invoke-direct/range {v18 .. v24}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v3, v2, v5

    new-instance v3, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v13, "alpha"

    new-array v14, v10, [F

    fill-array-data v14, :array_31

    const v12, 0x3080048

    move-object v11, v3

    invoke-direct/range {v11 .. v17}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v3, v2, v10

    new-instance v3, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v20, "alpha"

    new-array v6, v10, [F

    fill-array-data v6, :array_32

    const v19, 0x308004a

    move-object/from16 v18, v3

    move-object/from16 v21, v6

    invoke-direct/range {v18 .. v24}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v3, v2, v7

    new-instance v3, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v13, "alpha"

    new-array v14, v10, [F

    fill-array-data v14, :array_33

    const v12, 0x3080046

    move-object v11, v3

    invoke-direct/range {v11 .. v17}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v3, v2, v8

    new-instance v3, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v20, "alpha"

    new-array v6, v10, [F

    fill-array-data v6, :array_34

    const v19, 0x308009b

    const/16 v24, 0x0

    move-object/from16 v18, v3

    move-object/from16 v21, v6

    invoke-direct/range {v18 .. v24}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v3, v2, v1

    iput-object v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->ITEMs_GPU_OUT:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 239
    new-array v2, v9, [Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    new-instance v3, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v13, "alpha"

    new-array v14, v10, [F

    fill-array-data v14, :array_35

    const v12, 0x3080026

    move-object v11, v3

    invoke-direct/range {v11 .. v17}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v3, v2, v4

    new-instance v3, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v20, "alpha"

    new-array v6, v10, [F

    fill-array-data v6, :array_36

    const v19, 0x3080025

    const/16 v24, 0x64

    move-object/from16 v18, v3

    move-object/from16 v21, v6

    invoke-direct/range {v18 .. v24}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v3, v2, v5

    new-instance v3, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v13, "alpha"

    new-array v14, v10, [F

    fill-array-data v14, :array_37

    const v12, 0x3080022

    move-object v11, v3

    invoke-direct/range {v11 .. v17}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v3, v2, v10

    new-instance v3, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v20, "alpha"

    new-array v6, v10, [F

    fill-array-data v6, :array_38

    const v19, 0x3080024

    move-object/from16 v18, v3

    move-object/from16 v21, v6

    invoke-direct/range {v18 .. v24}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v3, v2, v7

    new-instance v3, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v13, "alpha"

    new-array v14, v10, [F

    fill-array-data v14, :array_39

    const v12, 0x3080020

    move-object v11, v3

    invoke-direct/range {v11 .. v17}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v3, v2, v8

    new-instance v3, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v20, "alpha"

    new-array v6, v10, [F

    fill-array-data v6, :array_3a

    const v19, 0x308009b

    const/16 v24, 0x0

    move-object/from16 v18, v3

    move-object/from16 v21, v6

    invoke-direct/range {v18 .. v24}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v3, v2, v1

    iput-object v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->ITEMs_CPU_GPU_OUT:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 247
    new-instance v1, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v13, "alpha"

    new-array v14, v10, [F

    fill-array-data v14, :array_3b

    const v12, 0x3080027

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    iput-object v1, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpu_gpu_normal_left_out:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 248
    new-instance v1, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v20, "alpha"

    new-array v2, v10, [F

    fill-array-data v2, :array_3c

    const v19, 0x308001e

    const/16 v24, 0x64

    move-object/from16 v18, v1

    move-object/from16 v21, v2

    invoke-direct/range {v18 .. v24}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    iput-object v1, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpu_gpu_light_left_out:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 249
    new-instance v1, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v13, "alpha"

    new-array v14, v10, [F

    fill-array-data v14, :array_3d

    const v12, 0x3080028

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    iput-object v1, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpu_gpu_normal_right_out:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 250
    new-instance v1, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v20, "alpha"

    new-array v2, v10, [F

    fill-array-data v2, :array_3e

    const v19, 0x308001f

    move-object/from16 v18, v1

    move-object/from16 v21, v2

    invoke-direct/range {v18 .. v24}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    iput-object v1, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpu_gpu_light_right_out:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 251
    new-array v1, v8, [Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    iget-object v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpu_gpu_normal_left_out:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    aput-object v2, v1, v4

    iget-object v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpu_gpu_light_left_out:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    aput-object v2, v1, v5

    iget-object v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpu_gpu_normal_right_out:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    aput-object v2, v1, v10

    iget-object v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpu_gpu_light_right_out:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    aput-object v2, v1, v7

    iput-object v1, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->ITEMs_LEFT_RIGHT_OUT:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 257
    new-array v1, v8, [Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    new-instance v2, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v13, "alpha"

    new-array v14, v10, [F

    fill-array-data v14, :array_3f

    const v12, 0x3080027

    const/16 v16, 0x190

    const/16 v17, 0x4b0

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v2, v1, v4

    new-instance v2, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v20, "alpha"

    new-array v3, v10, [F

    fill-array-data v3, :array_40

    const v19, 0x308001e

    const/16 v23, 0x190

    const/16 v24, 0x4b0

    move-object/from16 v18, v2

    move-object/from16 v21, v3

    invoke-direct/range {v18 .. v24}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v2, v1, v5

    new-instance v2, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v13, "alpha"

    new-array v14, v10, [F

    fill-array-data v14, :array_41

    const v12, 0x3080028

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v2, v1, v10

    new-instance v2, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v20, "alpha"

    new-array v3, v10, [F

    fill-array-data v3, :array_42

    const v19, 0x308001f

    move-object/from16 v18, v2

    move-object/from16 v21, v3

    invoke-direct/range {v18 .. v24}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    aput-object v2, v1, v7

    iput-object v1, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->ITEMs_LEFT_RIGHT_IN:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 263
    new-instance v1, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v13, "cust_percent_start"

    new-array v14, v10, [F

    fill-array-data v14, :array_43

    sget-object v15, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->COMMON_CURVE:[F

    const v12, 0x308009c

    const/16 v16, 0x12c

    const/16 v17, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    iput-object v1, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_left_data_out:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 264
    new-instance v1, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v20, "cust_percent_start"

    new-array v2, v10, [F

    fill-array-data v2, :array_44

    sget-object v22, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->COMMON_CURVE:[F

    const v19, 0x308009c

    const/16 v23, 0x3b6

    const/16 v24, 0x1f4

    move-object/from16 v18, v1

    move-object/from16 v21, v2

    invoke-direct/range {v18 .. v24}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    iput-object v1, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_left_data_in:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 265
    new-instance v1, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v13, "cust_percent_end"

    new-array v14, v10, [F

    fill-array-data v14, :array_45

    sget-object v15, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->COMMON_CURVE:[F

    const v12, 0x30800a6

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    iput-object v1, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_right_data_out:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 266
    new-instance v1, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v20, "cust_percent_end"

    new-array v2, v10, [F

    fill-array-data v2, :array_46

    sget-object v22, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->COMMON_CURVE:[F

    const v19, 0x30800a6

    move-object/from16 v18, v1

    move-object/from16 v21, v2

    invoke-direct/range {v18 .. v24}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    iput-object v1, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_right_data_in:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 267
    new-array v1, v10, [Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    iget-object v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_left_data_out:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    aput-object v2, v1, v4

    iget-object v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_left_data_in:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    aput-object v2, v1, v5

    iput-object v1, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->ITEMs_LEFT_DATA:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 271
    new-array v1, v10, [Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    iget-object v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_right_data_out:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    aput-object v2, v1, v4

    iget-object v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_right_data_in:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    aput-object v2, v1, v5

    iput-object v1, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->ITEMs_RIGHT_DATA:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 275
    new-instance v1, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const-string v11, "alpha"

    new-array v12, v8, [F

    fill-array-data v12, :array_47

    const v10, 0x308009d

    const/4 v13, 0x0

    const/16 v14, 0x3e8

    const/16 v15, 0xfa

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;-><init>(ILjava/lang/String;[F[FII)V

    iput-object v1, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_logo_light_in_out:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 277
    new-array v1, v5, [Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    iget-object v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_logo_light_in_out:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    aput-object v2, v1, v4

    iput-object v1, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->ITEMs_LOGO_LIGHT:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 18
    move-object/from16 v1, p1

    iput-object v1, v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_root:Landroid/view/View;

    .line 19
    invoke-direct/range {p0 .. p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->init()V

    .line 20
    return-void

    nop

    nop

    :array_0
    .array-data 4
        0xf51400
        0xf51400
        -0x2e0aec00
        0xf51400
        0xf51400
    .end array-data

    :array_1
    .array-data 4
        0xf51400
        0xf51400
        -0x2e0aec00
        0xf51400
        0xf51400
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_c
    .array-data 4
        0x43340000    # 180.0f
        0x44070000    # 540.0f
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_11
    .array-data 4
        0x3f47ae14    # 0.78f
        0x3f800000    # 1.0f
    .end array-data

    :array_12
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_13
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_14
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_15
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_16
    .array-data 4
        0x3f47ae14    # 0.78f
        0x3f800000    # 1.0f
    .end array-data

    :array_17
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_18
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_19
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1b
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1c
    .array-data 4
        0x3f47ae14    # 0.78f
        0x3f800000    # 1.0f
    .end array-data

    :array_1d
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1f
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_20
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_21
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_22
    .array-data 4
        0x3f47ae14    # 0.78f
        0x3f800000    # 1.0f
    .end array-data

    :array_23
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_24
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_25
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_26
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_27
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_28
    .array-data 4
        0x3f800000    # 1.0f
        0x3f47ae14    # 0.78f
    .end array-data

    :array_29
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2b
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2d
    .array-data 4
        0x3f800000    # 1.0f
        0x3f47ae14    # 0.78f
    .end array-data

    :array_2e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2f
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_30
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_31
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_32
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_33
    .array-data 4
        0x3f800000    # 1.0f
        0x3f47ae14    # 0.78f
    .end array-data

    :array_34
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_35
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_36
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_37
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_38
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_39
    .array-data 4
        0x3f800000    # 1.0f
        0x3f47ae14    # 0.78f
    .end array-data

    :array_3a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3b
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3d
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3f
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_40
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_41
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_42
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_43
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data

    :array_44
    .array-data 4
        0x43340000    # 180.0f
        0x0
    .end array-data

    :array_45
    .array-data 4
        0x43b40000    # 360.0f
        0x43340000    # 180.0f
    .end array-data

    :array_46
    .array-data 4
        0x43340000    # 180.0f
        0x43b40000    # 360.0f
    .end array-data

    :array_47
    .array-data 4
        0x0
        0x3f47ae14    # 0.78f
        0x3f47ae14    # 0.78f
        0x0
    .end array-data
.end method

.method private adjustAnimation_LogoLight(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 418
    if-nez p1, :cond_0

    .line 419
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_logo_light_in_out:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->setRepeatCount(I)V

    goto :goto_0

    .line 421
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_logo_light_in_out:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->setRepeatCount(I)V

    .line 423
    :goto_0
    return-void
.end method

.method private adjustAnimation_loop(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 392
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_0

    .line 393
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_guangdai:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-virtual {v2, v1}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->setRepeatCount(I)V

    .line 394
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_guanghuan:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-virtual {v2, v1}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->setRepeatCount(I)V

    .line 395
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_xuanzhuan:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-virtual {v1, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->setRepeatCount(I)V

    goto :goto_0

    .line 397
    :cond_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_guangdai:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-virtual {v2, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->setRepeatCount(I)V

    .line 398
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_guanghuan:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-virtual {v2, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->setRepeatCount(I)V

    .line 399
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_xuanzhuan:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->setRepeatCount(I)V

    .line 401
    :goto_0
    return-void
.end method

.method private adjustInAnimation(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 381
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 382
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_auto_mode_line:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-virtual {v1, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->setRepeatCount(I)V

    goto :goto_0

    .line 383
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 384
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_gpu_mode_line:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-virtual {v1, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->setRepeatCount(I)V

    goto :goto_0

    .line 385
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 386
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpu_mode_line:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-virtual {v1, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->setRepeatCount(I)V

    goto :goto_0

    .line 387
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 388
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpu_gpu_mode_line:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-virtual {v1, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->setRepeatCount(I)V

    .line 390
    :cond_3
    :goto_0
    return-void
.end method

.method private adjustInAnimation_LeftRightData(I)V
    .locals 9
    .param p1, "mode"    # I

    .line 403
    const/high16 v0, 0x43340000    # 180.0f

    .local v0, "left1":F
    const/high16 v1, 0x43340000    # 180.0f

    .local v1, "left2":F
    const/high16 v2, 0x43340000    # 180.0f

    .local v2, "right1":F
    const/high16 v3, 0x43340000    # 180.0f

    .line 404
    .local v3, "right2":F
    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne p1, v5, :cond_0

    .line 405
    const/high16 v0, 0x43340000    # 180.0f

    const/4 v1, 0x0

    .line 406
    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x43730000    # 243.0f

    goto :goto_0

    .line 407
    :cond_0
    if-ne p1, v4, :cond_1

    .line 408
    const/high16 v0, 0x43340000    # 180.0f

    const/high16 v1, 0x42ea0000    # 117.0f

    .line 409
    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x43b40000    # 360.0f

    goto :goto_0

    .line 410
    :cond_1
    const/4 v6, 0x3

    if-ne p1, v6, :cond_2

    .line 411
    const/high16 v0, 0x43340000    # 180.0f

    const/4 v1, 0x0

    .line 412
    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x43b40000    # 360.0f

    .line 414
    :cond_2
    :goto_0
    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_left_data_in:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    new-array v7, v5, [F

    const/4 v8, 0x0

    aput v0, v7, v8

    aput v1, v7, v4

    invoke-virtual {v6, v7}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->setParams([F)V

    .line 415
    iget-object v6, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_right_data_in:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    new-array v5, v5, [F

    aput v2, v5, v8

    aput v3, v5, v4

    invoke-virtual {v6, v5}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->setParams([F)V

    .line 416
    return-void
.end method

.method private adjustOutAnimation(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 462
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 463
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_auto_mode_line:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-virtual {v2, v1}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->setRepeatCount(I)V

    .line 464
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_auto_mode_line_alpha:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->cancel()V

    .line 465
    const v1, 0x3080008

    invoke-direct {p0, v1, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->setAlpha(IF)V

    goto :goto_0

    .line 466
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 467
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_gpu_mode_line:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-virtual {v2, v1}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->setRepeatCount(I)V

    .line 468
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_gpu_mode_line_alpha:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->cancel()V

    .line 469
    const v1, 0x3080049

    invoke-direct {p0, v1, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->setAlpha(IF)V

    goto :goto_0

    .line 470
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 471
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpu_mode_line:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-virtual {v2, v1}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->setRepeatCount(I)V

    .line 472
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpu_mode_line_alpha:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->cancel()V

    .line 473
    const v1, 0x308002d

    invoke-direct {p0, v1, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->setAlpha(IF)V

    goto :goto_0

    .line 474
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 475
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpu_gpu_mode_line:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-virtual {v2, v1}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->setRepeatCount(I)V

    .line 476
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpu_gpu_mode_line_alpha:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->cancel()V

    .line 477
    const v1, 0x3080023

    invoke-direct {p0, v1, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->setAlpha(IF)V

    .line 479
    :cond_3
    :goto_0
    return-void
.end method

.method private adjustOutAnimation_LeftRight()V
    .locals 1

    .line 443
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpu_gpu_normal_left_out:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->adjustOutAnimation_LeftRight(Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;)V

    .line 444
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpu_gpu_light_left_out:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->adjustOutAnimation_LeftRight(Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;)V

    .line 445
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpu_gpu_normal_right_out:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->adjustOutAnimation_LeftRight(Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;)V

    .line 446
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpu_gpu_light_right_out:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->adjustOutAnimation_LeftRight(Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;)V

    .line 447
    return-void
.end method

.method private adjustOutAnimation_LeftRight(Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;)V
    .locals 5
    .param p1, "item"    # Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 449
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_root:Landroid/view/View;

    invoke-virtual {p1}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->getViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 450
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p1}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->getParams()[F

    move-result-object v1

    .line 451
    .local v1, "value":[F
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 452
    new-array v2, v3, [F

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    aget v4, v1, v3

    aput v4, v2, v3

    invoke-virtual {p1, v2}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->setParams([F)V

    .line 454
    :cond_0
    return-void
.end method

.method private adjustOutAnimation_LeftRightData()V
    .locals 1

    .line 425
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_left_data_out:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->adjustOutAnimation_LeftRightData(Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;)V

    .line 426
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_right_data_out:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->adjustOutAnimation_LeftRightData(Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;)V

    .line 427
    return-void
.end method

.method private adjustOutAnimation_LeftRightData(Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;)V
    .locals 9
    .param p1, "item"    # Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    .line 429
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_root:Landroid/view/View;

    invoke-virtual {p1}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->getViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 430
    .local v0, "vBase":Landroid/view/View;
    const/4 v1, 0x0

    .line 431
    .local v1, "v":Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;

    if-eqz v2, :cond_0

    .line 432
    move-object v1, v0

    check-cast v1, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;

    .line 434
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->getParams()[F

    move-result-object v2

    .line 435
    .local v2, "value":[F
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 436
    invoke-virtual {p1}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->getAttr()Ljava/lang/String;

    move-result-object v3

    .line 437
    .local v3, "attr":Ljava/lang/String;
    const-string v5, "cust_percent_start"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 438
    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->getDegreeStart()D

    move-result-wide v5

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/game/gameperformance/ClipImageView;->getDegreeEnd()D

    move-result-wide v5

    .line 439
    .local v5, "nCurStart":D
    :goto_0
    new-array v4, v4, [F

    const/4 v7, 0x0

    double-to-float v8, v5

    aput v8, v4, v7

    const/4 v7, 0x1

    aget v8, v2, v7

    aput v8, v4, v7

    invoke-virtual {p1, v4}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->setParams([F)V

    .line 441
    .end local v3    # "attr":Ljava/lang/String;
    .end local v5    # "nCurStart":D
    :cond_2
    return-void
.end method

.method private getAnimation_Guangdai()Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;
    .locals 3

    .line 325
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_auto_guangdai:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_root:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->ITEMs_AUTO_GUANGDAI:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;-><init>(Landroid/view/View;[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_auto_guangdai:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    .line 328
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_auto_guangdai:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    return-object v0
.end method

.method private getAnimation_LeftData()Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;
    .locals 4

    .line 301
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_Left_Data:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_root:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->ITEMs_LEFT_DATA:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;-><init>(Landroid/view/View;[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;Z)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_Left_Data:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    .line 304
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_Left_Data:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    return-object v0
.end method

.method private getAnimation_LogoLight()Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;
    .locals 3

    .line 319
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_Logo_Light:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_root:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->ITEMs_LOGO_LIGHT:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;-><init>(Landroid/view/View;[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_Logo_Light:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    .line 322
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_Logo_Light:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    return-object v0
.end method

.method private getAnimation_RightData()Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;
    .locals 4

    .line 307
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_Right_Data:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_root:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->ITEMs_RIGHT_DATA:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;-><init>(Landroid/view/View;[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;Z)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_Right_Data:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    .line 310
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_Right_Data:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    return-object v0
.end method

.method private getInAnimation(I)Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;
    .locals 4
    .param p1, "mode"    # I

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "anim":Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;
    if-nez p1, :cond_1

    .line 333
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_autoIn:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    if-nez v1, :cond_0

    .line 334
    new-instance v1, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_root:Landroid/view/View;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->ITEMs_AUTO_IN:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-direct {v1, v2, v3}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;-><init>(Landroid/view/View;[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_autoIn:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    .line 336
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_autoIn:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    goto :goto_0

    .line 337
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 338
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpuIn:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    if-nez v1, :cond_2

    .line 339
    new-instance v1, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_root:Landroid/view/View;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->ITEMs_CPU_IN:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-direct {v1, v2, v3}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;-><init>(Landroid/view/View;[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpuIn:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    .line 341
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpuIn:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    goto :goto_0

    .line 342
    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    .line 343
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_gpuIn:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    if-nez v1, :cond_4

    .line 344
    new-instance v1, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_root:Landroid/view/View;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->ITEMs_GPU_IN:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-direct {v1, v2, v3}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;-><init>(Landroid/view/View;[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_gpuIn:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    .line 346
    :cond_4
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_gpuIn:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    goto :goto_0

    .line 347
    :cond_5
    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    .line 348
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpugpuIn:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    if-nez v1, :cond_6

    .line 349
    new-instance v1, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_root:Landroid/view/View;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->ITEMs_CPU_GPU_IN:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-direct {v1, v2, v3}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;-><init>(Landroid/view/View;[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpugpuIn:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    .line 351
    :cond_6
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpugpuIn:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    .line 353
    :cond_7
    :goto_0
    return-object v0
.end method

.method private getInAnimation_LeftRight()Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;
    .locals 3

    .line 295
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_In_LeftRight:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_root:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->ITEMs_LEFT_RIGHT_IN:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;-><init>(Landroid/view/View;[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_In_LeftRight:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    .line 298
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_In_LeftRight:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    return-object v0
.end method

.method private getLineWidth()I
    .locals 2

    .line 38
    iget v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_lineWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 39
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_root:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3060037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_lineWidth:I

    .line 41
    :cond_0
    iget v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_lineWidth:I

    return v0
.end method

.method private getModeDescription(I)I
    .locals 2
    .param p1, "mode"    # I

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "resId":I
    if-nez p1, :cond_0

    .line 95
    const v0, 0x30c005d

    goto :goto_0

    .line 96
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 97
    const v0, 0x30c005e

    goto :goto_0

    .line 98
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 99
    const v0, 0x30c005f

    goto :goto_0

    .line 100
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 101
    const v0, 0x30c0060

    .line 103
    :cond_3
    :goto_0
    return v0
.end method

.method private getModeTextView()Landroid/widget/TextView;
    .locals 2

    .line 87
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_modeTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_root:Landroid/view/View;

    const v1, 0x30800a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_modeTextView:Landroid/widget/TextView;

    .line 90
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_modeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private getOutAnimation(I)Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;
    .locals 4
    .param p1, "mode"    # I

    .line 356
    const/4 v0, 0x0

    .line 357
    .local v0, "anim":Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;
    if-nez p1, :cond_1

    .line 358
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_autoOut:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    if-nez v1, :cond_0

    .line 359
    new-instance v1, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_root:Landroid/view/View;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->ITEMs_AUTO_OUT:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-direct {v1, v2, v3}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;-><init>(Landroid/view/View;[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_autoOut:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    .line 361
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_autoOut:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    goto :goto_0

    .line 362
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 363
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpuOut:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    if-nez v1, :cond_2

    .line 364
    new-instance v1, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_root:Landroid/view/View;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->ITEMs_CPU_OUT:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-direct {v1, v2, v3}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;-><init>(Landroid/view/View;[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpuOut:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    .line 366
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpuOut:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    goto :goto_0

    .line 367
    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    .line 368
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_gpuOut:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    if-nez v1, :cond_4

    .line 369
    new-instance v1, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_root:Landroid/view/View;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->ITEMs_GPU_OUT:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-direct {v1, v2, v3}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;-><init>(Landroid/view/View;[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_gpuOut:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    .line 371
    :cond_4
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_gpuOut:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    goto :goto_0

    .line 372
    :cond_5
    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    .line 373
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpugpuOut:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    if-nez v1, :cond_6

    .line 374
    new-instance v1, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_root:Landroid/view/View;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->ITEMs_CPU_GPU_OUT:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-direct {v1, v2, v3}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;-><init>(Landroid/view/View;[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;)V

    iput-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpugpuOut:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    .line 376
    :cond_6
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpugpuOut:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    .line 378
    :cond_7
    :goto_0
    return-object v0
.end method

.method private getOutAnimation_LeftRight()Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;
    .locals 3

    .line 313
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_Out_LeftRight:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_root:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->ITEMs_LEFT_RIGHT_OUT:[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    invoke-direct {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;-><init>(Landroid/view/View;[Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_Out_LeftRight:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    .line 316
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_Out_LeftRight:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    return-object v0
.end method

.method private init()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->init_logo_guaandai()V

    .line 23
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->init_logo_guaanhuan()V

    .line 24
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->init_logo_xuanzhuan()V

    .line 25
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->init_animators()V

    .line 26
    return-void
.end method

.method private init_animators()V
    .locals 7

    .line 30
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_auto_mode_line:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    const/4 v1, 0x2

    new-array v2, v1, [F

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->getLineWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->getLineWidth()I

    move-result v3

    int-to-float v3, v3

    iget v5, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->LINEDELAY:F

    mul-float/2addr v3, v5

    const/4 v5, 0x1

    aput v3, v2, v5

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->setParams([F)V

    .line 31
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_gpu_mode_line:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    new-array v2, v1, [F

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->getLineWidth()I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v4

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->getLineWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    iget v6, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->LINEDELAY:F

    mul-float/2addr v3, v6

    aput v3, v2, v5

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->setParams([F)V

    .line 32
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpu_mode_line:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    new-array v2, v1, [F

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->getLineWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v2, v4

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->getLineWidth()I

    move-result v3

    int-to-float v3, v3

    iget v6, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->LINEDELAY:F

    mul-float/2addr v3, v6

    aput v3, v2, v5

    invoke-virtual {v0, v2}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->setParams([F)V

    .line 33
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_cpu_gpu_mode_line:Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;

    new-array v1, v1, [F

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->getLineWidth()I

    move-result v2

    int-to-float v2, v2

    aput v2, v1, v4

    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->getLineWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->LINEDELAY:F

    mul-float/2addr v2, v3

    aput v2, v1, v5

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper$Item;->setParams([F)V

    .line 34
    return-void
.end method

.method private init_logo_guaandai()V
    .locals 3

    .line 48
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_root:Landroid/view/View;

    const v1, 0x3080098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;

    if-eqz v1, :cond_0

    .line 50
    move-object v1, v0

    check-cast v1, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;

    const/16 v2, 0x47

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->setRadiusPercent(I)V

    .line 51
    move-object v1, v0

    check-cast v1, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->COLORS:[I

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->setGradientColors([I)V

    .line 53
    :cond_0
    return-void
.end method

.method private init_logo_guaanhuan()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_root:Landroid/view/View;

    const v1, 0x3080099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;

    if-eqz v1, :cond_0

    .line 57
    move-object v1, v0

    check-cast v1, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;

    const/16 v2, 0x47

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->setRadiusPercent(I)V

    .line 58
    move-object v1, v0

    check-cast v1, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->setClipOut(Z)V

    .line 59
    move-object v1, v0

    check-cast v1, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->COLORS:[I

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->setGradientColors([I)V

    .line 61
    :cond_0
    return-void
.end method

.method private init_logo_xuanzhuan()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_root:Landroid/view/View;

    const v1, 0x308009b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;

    if-eqz v1, :cond_0

    .line 67
    move-object v1, v0

    check-cast v1, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;

    const/16 v2, 0x47

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->setRadiusPercent(I)V

    .line 68
    move-object v1, v0

    check-cast v1, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->setClipOut(Z)V

    .line 69
    move-object v1, v0

    check-cast v1, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->setMoveY(F)V

    .line 70
    move-object v1, v0

    check-cast v1, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->COLORS:[I

    invoke-virtual {v1, v2}, Lcn/nubia/server/appmgmt/game/gameperformance/CircleClipImageView;->setGradientColors([I)V

    .line 72
    :cond_0
    return-void
.end method

.method private setAlpha(IF)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "a"    # F

    .line 456
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_root:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 457
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 460
    :cond_0
    return-void
.end method

.method private startAllAnimations(I)V
    .locals 7
    .param p1, "mode"    # I

    .line 106
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->getInAnimation(I)Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    move-result-object v0

    .line 107
    .local v0, "animsIn":Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;
    iget v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_curMode:I

    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->getOutAnimation(I)Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    move-result-object v1

    .line 108
    .local v1, "animsOut":Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;
    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->adjustInAnimation(I)V

    .line 110
    invoke-virtual {v0}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->start()V

    .line 112
    :cond_0
    if-eqz v1, :cond_1

    .line 113
    iget v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_curMode:I

    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->adjustOutAnimation(I)V

    .line 114
    invoke-virtual {v1}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->start()V

    .line 117
    :cond_1
    if-nez p1, :cond_2

    .line 118
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->getAnimation_Guangdai()Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    move-result-object v2

    .line 119
    .local v2, "animsGuangdai":Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;
    if-eqz v2, :cond_2

    .line 120
    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->start()V

    .line 123
    .end local v2    # "animsGuangdai":Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;
    :cond_2
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->adjustAnimation_loop(I)V

    .line 125
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->getInAnimation_LeftRight()Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    move-result-object v2

    .line 126
    .local v2, "animsIn_lr":Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->getOutAnimation_LeftRight()Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    move-result-object v3

    .line 127
    .local v3, "animsOut_lr":Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;
    if-eqz v2, :cond_4

    .line 128
    if-eqz p1, :cond_3

    .line 129
    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->start()V

    goto :goto_0

    .line 131
    :cond_3
    invoke-virtual {v2}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->cancel()V

    .line 134
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->adjustOutAnimation_LeftRight()V

    .line 136
    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->start()V

    .line 138
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->adjustInAnimation_LeftRightData(I)V

    .line 139
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->adjustOutAnimation_LeftRightData()V

    .line 140
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->getAnimation_LeftData()Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    move-result-object v4

    .line 141
    .local v4, "anims_l_data":Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->getAnimation_RightData()Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    move-result-object v5

    .line 142
    .local v5, "anims_r_data":Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;
    if-eqz v4, :cond_5

    .line 143
    invoke-virtual {v4}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->start()V

    .line 145
    :cond_5
    if-eqz v5, :cond_6

    .line 146
    invoke-virtual {v5}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->start()V

    .line 148
    :cond_6
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->adjustAnimation_LogoLight(I)V

    .line 149
    if-eqz p1, :cond_7

    .line 150
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->getAnimation_LogoLight()Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;

    move-result-object v6

    .line 151
    .local v6, "anims_logo_light":Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;
    if-eqz v6, :cond_7

    .line 152
    invoke-virtual {v6}, Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;->start()V

    .line 155
    .end local v6    # "anims_logo_light":Lcn/nubia/server/appmgmt/game/gameperformance/AnimatorHelper;
    :cond_7
    return-void
.end method


# virtual methods
.method public update(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 74
    iget v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_curMode:I

    if-ne p1, v0, :cond_0

    .line 75
    return-void

    .line 77
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->getModeTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->getModeTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->getModeDescription(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 80
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->startAllAnimations(I)V

    .line 81
    iput p1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->m_curMode:I

    .line 82
    return-void
.end method
