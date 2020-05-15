.class public Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;
.super Landroid/app/Dialog;
.source "PerformanceModeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ACTION_FERFORMANCE_OPTION:Ljava/lang/String; = "cn.nubia.intent.action.PERFORMANCE_MODE_OPTION"

.field public static final NUBIA_PERFORMANCE_MODE:Ljava/lang/String; = "nubia_performance_mode"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final PERFORMANCE_MODE:Ljava/lang/String; = "NubiaperformanceMode"

.field public static final TAG:Ljava/lang/String; = "PerformanceModeView"

.field private static final VIRTUAL_GAME_KEY_CONFIG:Z


# instance fields
.field private mChoiceAutoMode:Landroid/view/View;

.field private mChoiceCPUGPUMode:Landroid/view/View;

.field private mChoiceCPUMode:Landroid/view/View;

.field private mChoiceGPUMode:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mGameAppPackageName:Ljava/lang/String;

.field private mGameKeyTouchIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGameKeyTouchIdsAutoMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGameKeyTouchIdsCPUGPUMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGameKeyTouchIdsCPUMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGameKeyTouchIdsGPUMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mModeClosed:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field m_bStartConfirm:Z

.field private m_helper:Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    const-string v0, "1"

    const-string/jumbo v1, "ro.nubia.virtualgamekey.enable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->VIRTUAL_GAME_KEY_CONFIG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    const v0, 0x30e0009

    invoke-direct {p0, p1, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;-><init>(Landroid/content/Context;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mGameKeyTouchIds:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mGameKeyTouchIdsAutoMode:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mGameKeyTouchIdsGPUMode:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mGameKeyTouchIdsCPUMode:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mGameKeyTouchIdsCPUGPUMode:Ljava/util/ArrayList;

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->m_bStartConfirm:Z

    .line 78
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;

    .line 46
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mGameKeyTouchIdsAutoMode:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;

    .line 46
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mGameKeyTouchIdsGPUMode:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;

    .line 46
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mGameKeyTouchIdsCPUMode:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;

    .line 46
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mGameKeyTouchIdsCPUGPUMode:Ljava/util/ArrayList;

    return-object v0
.end method

.method private initView()V
    .locals 4

    .line 89
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 90
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .line 91
    .local v1, "view":Landroid/view/View;
    sget-boolean v2, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->VIRTUAL_GAME_KEY_CONFIG:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 92
    const v2, 0x30a0020

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 94
    :cond_0
    const v2, 0x30a001f

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 96
    :goto_0
    new-instance v2, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;

    invoke-direct {v2, v1}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->m_helper:Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;

    .line 97
    invoke-virtual {p0, v1}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->setContentView(Landroid/view/View;)V

    .line 99
    const v2, 0x3080012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mChoiceAutoMode:Landroid/view/View;

    .line 100
    const v2, 0x3080015

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mChoiceGPUMode:Landroid/view/View;

    .line 101
    const v2, 0x3080014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mChoiceCPUMode:Landroid/view/View;

    .line 102
    const v2, 0x3080013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mChoiceCPUGPUMode:Landroid/view/View;

    .line 103
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mChoiceAutoMode:Landroid/view/View;

    new-instance v3, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView$1;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView$1;-><init>(Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 109
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mChoiceGPUMode:Landroid/view/View;

    new-instance v3, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView$2;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView$2;-><init>(Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 115
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mChoiceCPUMode:Landroid/view/View;

    new-instance v3, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView$3;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView$3;-><init>(Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 121
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mChoiceCPUGPUMode:Landroid/view/View;

    new-instance v3, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView$4;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView$4;-><init>(Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 128
    const v2, 0x308009f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mModeClosed:Landroid/widget/TextView;

    .line 129
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mModeClosed:Landroid/widget/TextView;

    new-instance v3, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView$5;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView$5;-><init>(Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 135
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mChoiceAutoMode:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 136
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mChoiceAutoMode:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    :cond_1
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mChoiceGPUMode:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 138
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mChoiceGPUMode:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    :cond_2
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mChoiceCPUMode:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 140
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mChoiceCPUMode:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    :cond_3
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mChoiceCPUGPUMode:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 142
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mChoiceCPUGPUMode:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    :cond_4
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mModeClosed:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 144
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mModeClosed:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    :cond_5
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mGameAppPackageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->readProviderData(Ljava/lang/String;)I

    move-result v2

    .line 146
    .local v2, "mode":I
    invoke-direct {p0, v2}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->setChoiceModeImage(I)V

    .line 147
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->setAttributes()V

    .line 148
    return-void
.end method

.method private isConfirming()Z
    .locals 1

    .line 304
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->m_bStartConfirm:Z

    return v0
.end method

.method private readProviderData(Ljava/lang/String;)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 373
    const/4 v0, 0x0

    .line 374
    .local v0, "ferformanceMode":I
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "NubiaperformanceMode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "value":Ljava/lang/String;
    const-string v2, "PerformanceModeView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "******* readProviderData value ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 377
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    .line 378
    .local v6, "tile":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 379
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .end local v6    # "tile":Ljava/lang/String;
    goto :goto_1

    .line 380
    .restart local v6    # "tile":Ljava/lang/String;
    :cond_0
    invoke-virtual {v6, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v3, :cond_1

    .line 381
    const-string v2, "+"

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 382
    goto :goto_2

    .line 377
    .end local v6    # "tile":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 386
    :cond_2
    :goto_2
    return v0
.end method

.method private setAttributes()V
    .locals 4

    .line 218
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 219
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 220
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 221
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 222
    const/16 v2, 0x7d8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 223
    const/16 v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 224
    const/4 v2, 0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 225
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 226
    const/16 v2, 0x1606

    .line 231
    .local v2, "uiFlag":I
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 234
    return-void
.end method

.method private setChoiceModeImage(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 151
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->m_helper:Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->m_helper:Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;

    invoke-virtual {v0, p1}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeViewHelper;->update(I)V

    .line 154
    :cond_0
    return-void
.end method

.method private showConfirmDialog(Z)V
    .locals 5
    .param p1, "bShow"    # Z

    .line 307
    const v0, 0x3080081

    invoke-virtual {p0, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 308
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    .line 309
    return-void

    .line 311
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->m_bStartConfirm:Z

    .line 312
    if-nez p1, :cond_1

    .line 313
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 314
    return-void

    .line 316
    :cond_1
    const v2, 0x30800a0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 317
    .local v2, "cancel":Landroid/view/View;
    const v3, 0x30800a2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 318
    .local v3, "ok":Landroid/view/View;
    if-eqz v2, :cond_3

    if-nez v3, :cond_2

    goto :goto_0

    .line 321
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->m_bStartConfirm:Z

    .line 322
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    new-instance v4, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView$6;

    invoke-direct {v4, p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView$6;-><init>(Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 330
    new-instance v4, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView$7;

    invoke-direct {v4, p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView$7;-><init>(Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 336
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 337
    return-void

    .line 319
    :cond_3
    :goto_0
    return-void
.end method

.method private startConfirmAction()V
    .locals 3

    .line 295
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nubia_performance_mode"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 297
    .local v0, "curMode":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 298
    return-void

    .line 300
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->showConfirmDialog(Z)V

    .line 301
    return-void
.end method

.method private updateProviderData(Ljava/lang/String;I)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 352
    if-nez p1, :cond_0

    .line 353
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "NubiaperformanceMode"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "value":Ljava/lang/String;
    const-string v1, ""

    .line 356
    .local v1, "newValue":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 357
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v2, v5

    .line 358
    .local v6, "tile":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 359
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .end local v6    # "tile":Ljava/lang/String;
    goto :goto_1

    .line 360
    .restart local v6    # "tile":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v3, :cond_2

    .line 361
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    goto :goto_1

    .line 364
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 357
    .end local v6    # "tile":Ljava/lang/String;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 367
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 369
    :cond_4
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "NubiaperformanceMode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 370
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 340
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 341
    return-void
.end method

.method public getAttachePackageName()Ljava/lang/String;
    .locals 1

    .line 348
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mGameAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "permormanceMode":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x30800a2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    .line 281
    :pswitch_0
    invoke-direct {p0, v3}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->showConfirmDialog(Z)V

    .line 282
    goto/16 :goto_0

    .line 276
    :pswitch_1
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->isConfirming()Z

    move-result v1

    if-nez v1, :cond_1

    .line 277
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->dismiss()V

    goto/16 :goto_0

    .line 255
    :pswitch_2
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->isConfirming()Z

    move-result v1

    if-nez v1, :cond_1

    .line 256
    const/4 v0, 0x1

    .line 257
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "nubia_performance_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 258
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mGameAppPackageName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->updateProviderData(Ljava/lang/String;I)V

    .line 259
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->setChoiceModeImage(I)V

    goto :goto_0

    .line 263
    :pswitch_3
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->isConfirming()Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    const/4 v0, 0x2

    .line 265
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "nubia_performance_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 266
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mGameAppPackageName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->updateProviderData(Ljava/lang/String;I)V

    .line 267
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->setChoiceModeImage(I)V

    goto :goto_0

    .line 271
    :pswitch_4
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->isConfirming()Z

    move-result v1

    if-nez v1, :cond_1

    .line 272
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->startConfirmAction()V

    goto :goto_0

    .line 247
    :pswitch_5
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->isConfirming()Z

    move-result v1

    if-nez v1, :cond_1

    .line 248
    const/4 v0, 0x0

    .line 249
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "nubia_performance_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 250
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mGameAppPackageName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->updateProviderData(Ljava/lang/String;I)V

    .line 251
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->setChoiceModeImage(I)V

    goto :goto_0

    .line 284
    :cond_0
    invoke-direct {p0, v3}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->showConfirmDialog(Z)V

    .line 285
    const/4 v0, 0x3

    .line 286
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "nubia_performance_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 287
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mGameAppPackageName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->updateProviderData(Ljava/lang/String;I)V

    .line 288
    invoke-direct {p0, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->setChoiceModeImage(I)V

    .line 289
    nop

    .line 293
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3080012
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x308009f
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 83
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->initView()V

    .line 85
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 211
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mGameKeyTouchIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 196
    :pswitch_1
    const/16 v0, 0xc

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    const/16 v0, 0xd

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 198
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mGameKeyTouchIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mGameKeyTouchIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 203
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 206
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mContext:Landroid/content/Context;

    const v1, 0x30c0030

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mToast:Landroid/widget/Toast;

    .line 207
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 214
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewTouchEvent(Landroid/view/MotionEvent;Ljava/util/ArrayList;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 157
    .local p2, "gameKeyTouchIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 184
    :pswitch_0
    if-eqz p2, :cond_5

    .line 185
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 159
    :pswitch_1
    if-eqz p2, :cond_5

    .line 160
    const/16 v0, 0xc

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    const/16 v0, 0xd

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 162
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    :cond_1
    const/4 v0, 0x1

    const v1, 0x30c0030

    if-eqz p2, :cond_3

    .line 168
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 169
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mToast:Landroid/widget/Toast;

    if-eqz v2, :cond_2

    .line 170
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 172
    :cond_2
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mToast:Landroid/widget/Toast;

    .line 173
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 176
    :cond_3
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mToast:Landroid/widget/Toast;

    if-eqz v2, :cond_4

    .line 177
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 179
    :cond_4
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mToast:Landroid/widget/Toast;

    .line 180
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 182
    nop

    .line 189
    :cond_5
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAttachePackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 344
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/PerformanceModeView;->mGameAppPackageName:Ljava/lang/String;

    .line 345
    return-void
.end method

.method public show()V
    .locals 0

    .line 238
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 239
    return-void
.end method
