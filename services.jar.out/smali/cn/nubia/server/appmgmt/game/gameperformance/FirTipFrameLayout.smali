.class public Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;
.super Landroid/widget/FrameLayout;
.source "FirTipFrameLayout.java"


# static fields
.field private static final KEY_FIRST_FLAG:Ljava/lang/String; = "nubia_game_preference_tip_flag"

.field private static final TAG:Ljava/lang/String; = "ClipImageView"

.field private static final VALUE_DEFALUT_INT:I = -0x1

.field private static final VALUE_FIRST_FLAG:I = 0x1


# instance fields
.field private m_tipArea:Landroid/view/View;

.field private final m_tipAreaClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout$1;-><init>(Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;->m_tipAreaClickListener:Landroid/view/View$OnClickListener;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance v0, Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout$1;-><init>(Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;->m_tipAreaClickListener:Landroid/view/View$OnClickListener;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;

    .line 15
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;->clearFirstStart()V

    return-void
.end method

.method private clearFirstStart()V
    .locals 3

    .line 62
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "nubia_game_preference_tip_flag"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 63
    return-void
.end method

.method private static getInt(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getTipArea()Landroid/view/View;
    .locals 2

    .line 43
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;->m_tipArea:Landroid/view/View;

    if-nez v0, :cond_0

    .line 44
    const v0, 0x3080082

    invoke-virtual {p0, v0}, Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;->m_tipArea:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;->m_tipArea:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;->m_tipArea:Landroid/view/View;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;->m_tipAreaClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;->m_tipArea:Landroid/view/View;

    return-object v0
.end method

.method private isFirstStart()Z
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "nubia_game_preference_tip_flag"

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static putInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 74
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 32
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;->getTipArea()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 33
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;->isFirstStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;->getTipArea()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gameperformance/FirTipFrameLayout;->getTipArea()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    :cond_1
    :goto_0
    return-void
.end method
