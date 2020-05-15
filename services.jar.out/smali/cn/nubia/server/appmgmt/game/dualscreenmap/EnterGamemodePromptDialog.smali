.class public Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;
.super Ljava/lang/Object;
.source "EnterGamemodePromptDialog.java"


# static fields
.field private static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "EnterGamemodePromptDialog"


# instance fields
.field private builder:Lnubia/widget/NubiaCenterAlertDialog$Builder;

.field private mCheckBoxLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDonotRemind:Landroid/widget/CheckBox;

.field private mEnterGamemodePromptDialog:Lnubia/widget/NubiaCenterAlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
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
    sput-boolean v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

    .line 22
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->mDonotRemind:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

    .line 22
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;)Lnubia/widget/NubiaCenterAlertDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;

    .line 22
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->mEnterGamemodePromptDialog:Lnubia/widget/NubiaCenterAlertDialog;

    return-object v0
.end method

.method private initView()V
    .locals 5

    .line 36
    new-instance v0, Lnubia/widget/NubiaCenterAlertDialog$Builder;

    iget-object v1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->mContext:Landroid/content/Context;

    const v2, 0x30e000a

    invoke-direct {v0, v1, v2}, Lnubia/widget/NubiaCenterAlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->builder:Lnubia/widget/NubiaCenterAlertDialog$Builder;

    .line 37
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->builder:Lnubia/widget/NubiaCenterAlertDialog$Builder;

    const v1, 0x30c0091

    invoke-virtual {v0, v1}, Lnubia/widget/NubiaCenterAlertDialog$Builder;->setTitle(I)Lnubia/widget/NubiaCenterAlertDialog$Builder;

    .line 39
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 40
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x30a000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 41
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->builder:Lnubia/widget/NubiaCenterAlertDialog$Builder;

    invoke-virtual {v2, v1}, Lnubia/widget/NubiaCenterAlertDialog$Builder;->setView(Landroid/view/View;)Lnubia/widget/NubiaCenterAlertDialog$Builder;

    .line 42
    const v2, 0x3080010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    .line 43
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    const v3, 0x3080035

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->mDonotRemind:Landroid/widget/CheckBox;

    .line 44
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->mCheckBoxLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog$1;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog$1;-><init>(Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->builder:Lnubia/widget/NubiaCenterAlertDialog$Builder;

    new-instance v3, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog$2;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog$2;-><init>(Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;)V

    const v4, 0x104000a

    invoke-virtual {v2, v4, v3}, Lnubia/widget/NubiaCenterAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lnubia/widget/NubiaCenterAlertDialog$Builder;

    .line 61
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->builder:Lnubia/widget/NubiaCenterAlertDialog$Builder;

    new-instance v3, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog$3;

    invoke-direct {v3, p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog$3;-><init>(Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4, v3}, Lnubia/widget/NubiaCenterAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lnubia/widget/NubiaCenterAlertDialog$Builder;

    .line 68
    return-void
.end method


# virtual methods
.method public createDialog(Landroid/content/Context;)Lnubia/widget/NubiaCenterAlertDialog;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 93
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->mContext:Landroid/content/Context;

    .line 94
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->initView()V

    .line 95
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->builder:Lnubia/widget/NubiaCenterAlertDialog$Builder;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->builder:Lnubia/widget/NubiaCenterAlertDialog$Builder;

    invoke-virtual {v0}, Lnubia/widget/NubiaCenterAlertDialog$Builder;->create()Lnubia/widget/NubiaCenterAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->mEnterGamemodePromptDialog:Lnubia/widget/NubiaCenterAlertDialog;

    .line 98
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->mEnterGamemodePromptDialog:Lnubia/widget/NubiaCenterAlertDialog;

    invoke-virtual {v0}, Lnubia/widget/NubiaCenterAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 99
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 100
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/high16 v2, 0x20000

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 102
    const/16 v2, 0x1606

    .line 107
    .local v2, "uiFlag":I
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 108
    const/16 v3, 0x7d8

    invoke-virtual {v0, v3}, Landroid/view/Window;->setType(I)V

    .line 109
    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->mEnterGamemodePromptDialog:Lnubia/widget/NubiaCenterAlertDialog;

    return-object v3
.end method

.method public dismiss()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->mEnterGamemodePromptDialog:Lnubia/widget/NubiaCenterAlertDialog;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->mEnterGamemodePromptDialog:Lnubia/widget/NubiaCenterAlertDialog;

    invoke-virtual {v0}, Lnubia/widget/NubiaCenterAlertDialog;->dismiss()V

    .line 90
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->mEnterGamemodePromptDialog:Lnubia/widget/NubiaCenterAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->mEnterGamemodePromptDialog:Lnubia/widget/NubiaCenterAlertDialog;

    invoke-virtual {v0}, Lnubia/widget/NubiaCenterAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x1

    return v0

    .line 83
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public show()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->mDonotRemind:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->mDonotRemind:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->mEnterGamemodePromptDialog:Lnubia/widget/NubiaCenterAlertDialog;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/EnterGamemodePromptDialog;->mEnterGamemodePromptDialog:Lnubia/widget/NubiaCenterAlertDialog;

    invoke-virtual {v0}, Lnubia/widget/NubiaCenterAlertDialog;->show()V

    .line 77
    :cond_1
    return-void
.end method
