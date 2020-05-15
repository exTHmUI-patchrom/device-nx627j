.class public Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;
.super Landroid/app/Dialog;
.source "GameKeyMapView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$IGameKeyClickListener;,
        Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$FingerEventListener;,
        Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$MyConfigurationChanged;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "GameKeyMapView"


# instance fields
.field private mColseBtn:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private mFloatBall:Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;

.field private mFloatBallRect:Landroid/graphics/Rect;

.field private mGameAppPackageName:Ljava/lang/String;

.field private mHintTextView:Landroid/widget/TextView;

.field private mIClickListener:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$IGameKeyClickListener;

.field private mOpenSwitch:Z

.field private mOptPanel:Landroid/widget/LinearLayout;

.field private mOrientation:I

.field private mSwitchBtn:Landroid/widget/ToggleButton;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    const v0, 0x30e000b

    invoke-direct {p0, p1, v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;-><init>(Landroid/content/Context;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mOpenSwitch:Z

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mOrientation:I

    .line 49
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    .line 27
    iget v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mOrientation:I

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;
    .param p1, "x1"    # I

    .line 27
    iput p1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mOrientation:I

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    .line 27
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mFloatBallRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .line 27
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mFloatBallRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;)Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    .line 27
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mFloatBall:Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/graphics/Rect;
    .param p3, "x3"    # I

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->setLayoutParams(Landroid/view/View;Landroid/graphics/Rect;I)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    .line 27
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mOpenSwitch:Z

    return v0
.end method

.method static synthetic access$500(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    .line 27
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;
    .param p1, "x1"    # Z

    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->updatNonFloatViewDisplay(Z)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    .line 27
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mOptPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;

    .line 27
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->saveFloatViewPosAndEnableMap()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;
    .param p1, "x1"    # Z

    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->handleSwitchBtnStateChange(Z)V

    return-void
.end method

.method private handleSwitchBtnStateChange(Z)V
    .locals 3
    .param p1, "check"    # Z

    .line 150
    iput-boolean p1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mOpenSwitch:Z

    .line 151
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mOpenSwitch:Z

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mFloatBall:Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mFloatBall:Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mFloatBallRect:Landroid/graphics/Rect;

    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->setLayoutParams(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 155
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 156
    .local v0, "locations":[I
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mFloatBall:Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;

    invoke-virtual {v1, v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->getLocationOnScreen([I)V

    .line 157
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mFloatBallRect:Landroid/graphics/Rect;

    invoke-static {v1, v2, v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->setGameKeyMapRect(Landroid/content/Context;Landroid/graphics/Rect;[I)V

    .line 158
    .end local v0    # "locations":[I
    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mFloatBall:Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mHintTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mGameAppPackageName:Ljava/lang/String;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mOpenSwitch:Z

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->updateEnabledGameList(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 163
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mOpenSwitch:Z

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->enableGameKeyMap(Landroid/content/Context;Z)V

    .line 164
    return-void
.end method

.method private initView()V
    .locals 4

    .line 59
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 60
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x30a001b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 61
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->setContentView(Landroid/view/View;)V

    .line 62
    invoke-virtual {p0, p0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 63
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->setCanceledOnTouchOutside(Z)V

    .line 65
    const v2, 0x3080094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mOptPanel:Landroid/widget/LinearLayout;

    .line 66
    const v2, 0x30800c2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mSwitchBtn:Landroid/widget/ToggleButton;

    .line 67
    const v2, 0x3080053

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mHintTextView:Landroid/widget/TextView;

    .line 68
    const v2, 0x308000c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mFloatBall:Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;

    .line 69
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mFloatBall:Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;

    new-instance v3, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$FingerEventListener;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$FingerEventListener;-><init>(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;)V

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->setFingerEventListener(Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView$IFingerEventListener;)V

    .line 70
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mFloatBall:Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;

    new-instance v3, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$MyConfigurationChanged;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$MyConfigurationChanged;-><init>(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;)V

    invoke-virtual {v2, v3}, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->setConfigurationChangedListener(Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView$IConfigurationChanged;)V

    .line 71
    const v2, 0x308001c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mColseBtn:Landroid/widget/ImageButton;

    .line 72
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mColseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->setAttributes()V

    .line 74
    return-void
.end method

.method private parseRectFromCoordinateStr()V
    .locals 3

    .line 209
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->getFloatViewPosition(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mFloatBallRect:Landroid/graphics/Rect;

    .line 210
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mOpenSwitch:Z

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mFloatBall:Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mFloatBallRect:Landroid/graphics/Rect;

    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->setLayoutParams(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 212
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->getLocationOnScreen(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    .line 213
    .local v0, "locations":[I
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mFloatBallRect:Landroid/graphics/Rect;

    invoke-static {v1, v2, v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->setGameKeyMapRect(Landroid/content/Context;Landroid/graphics/Rect;[I)V

    .line 214
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->enableGameKeyMap(Landroid/content/Context;Z)V

    .line 215
    .end local v0    # "locations":[I
    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mFloatBall:Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->enableGameKeyMap(Landroid/content/Context;Z)V

    .line 220
    :goto_0
    return-void
.end method

.method private saveFloatViewPosAndEnableMap()V
    .locals 5

    .line 180
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 181
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mFloatBall:Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;

    invoke-virtual {v1, v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 182
    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mFloatBallRect:Landroid/graphics/Rect;

    .line 183
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 184
    .local v1, "locations":[I
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mFloatBall:Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;

    invoke-virtual {v2, v1}, Lcn/nubia/server/appmgmt/game/gamekeymap/FakeFloatView;->getLocationOnScreen([I)V

    .line 185
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mGameAppPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mFloatBallRect:Landroid/graphics/Rect;

    invoke-static {v2, v3, v4, v1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->saveFloatViewPosition(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Rect;[I)V

    .line 186
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mFloatBallRect:Landroid/graphics/Rect;

    invoke-static {v2, v3, v1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->setGameKeyMapRect(Landroid/content/Context;Landroid/graphics/Rect;[I)V

    .line 187
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->enableGameKeyMap(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v0    # "rect":Landroid/graphics/Rect;
    .end local v1    # "locations":[I
    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private setAttributes()V
    .locals 3

    .line 77
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 78
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 79
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 80
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 81
    const/16 v2, 0x7d8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 84
    return-void
.end method

.method private setLayoutParams(Landroid/view/View;Landroid/graphics/Rect;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "gravity"    # I

    .line 223
    if-eqz p2, :cond_0

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 225
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 226
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 227
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_0

    .line 229
    :cond_0
    const-string v0, "GameKeyMapView"

    const-string/jumbo v1, "setLayoutParams, rect is invalid!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :goto_0
    return-void
.end method

.method private updatNonFloatViewDisplay(Z)V
    .locals 2
    .param p1, "display"    # Z

    .line 167
    if-eqz p1, :cond_0

    .line 168
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mOptPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mColseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mOptPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mColseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 249
    iget-boolean v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mOpenSwitch:Z

    if-eqz v0, :cond_0

    .line 250
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->saveFloatViewPosAndEnableMap()V

    goto :goto_0

    .line 252
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->enableGameKeyMap(Landroid/content/Context;Z)V

    .line 254
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mGameAppPackageName:Ljava/lang/String;

    iget-boolean v2, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mOpenSwitch:Z

    invoke-static {v0, v1, v2}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->updateEnabledGameList(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 256
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 257
    return-void
.end method

.method public getAttachePackageName()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mGameAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x308001c

    if-ne v1, v0, :cond_0

    .line 237
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mIClickListener:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$IGameKeyClickListener;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mIClickListener:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$IGameKeyClickListener;

    invoke-interface {v0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$IGameKeyClickListener;->doClose()V

    .line 239
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mContext:Landroid/content/Context;

    .line 240
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x30c0053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 239
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 245
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 54
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->initView()V

    .line 56
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 262
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 263
    const/4 v0, 0x1

    return v0

    .line 265
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAttachePackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mGameAppPackageName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setOptClickListener(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$IGameKeyClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$IGameKeyClickListener;

    .line 269
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mIClickListener:Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$IGameKeyClickListener;

    .line 270
    return-void
.end method

.method public show()V
    .locals 2

    .line 195
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 196
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mGameAppPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapHelper;->isGameKeyMapEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mOpenSwitch:Z

    .line 197
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mSwitchBtn:Landroid/widget/ToggleButton;

    iget-boolean v1, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mOpenSwitch:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 198
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mSwitchBtn:Landroid/widget/ToggleButton;

    new-instance v1, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$1;

    invoke-direct {v1, p0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView$1;-><init>(Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 204
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->parseRectFromCoordinateStr()V

    .line 205
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcn/nubia/server/appmgmt/game/gamekeymap/GameKeyMapView;->mOrientation:I

    .line 206
    return-void
.end method
