.class public Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;
.super Landroid/app/Dialog;
.source "GuideDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog$IGuideClickInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GuideDialog"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialogAnim:Landroid/view/View;

.field private mGuideClickInterface:Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog$IGuideClickInterface;

.field private mHandler:Landroid/os/Handler;

.field private mJoinButton:Landroid/widget/Button;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    const v0, 0x30e0009

    invoke-direct {p0, p1, v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;-><init>(Landroid/content/Context;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;->mHandler:Landroid/os/Handler;

    .line 32
    new-instance v0, Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog$1;-><init>(Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;->mRunnable:Ljava/lang/Runnable;

    .line 47
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;

    .line 22
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;->mDialogAnim:Landroid/view/View;

    return-object v0
.end method

.method private initView()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 58
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x30a0011

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 59
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;->setContentView(Landroid/view/View;)V

    .line 60
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;->setCanceledOnTouchOutside(Z)V

    .line 62
    const v2, 0x3080060

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;->mJoinButton:Landroid/widget/Button;

    .line 63
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;->mJoinButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v2, 0x3080032

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;->mDialogAnim:Landroid/view/View;

    .line 96
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;->setAttributes()V

    .line 97
    return-void
.end method

.method private setAttributes()V
    .locals 3

    .line 100
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 101
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 102
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 103
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 104
    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 105
    const/16 v2, 0x7d8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 106
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 108
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 125
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 132
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x3080060

    if-ne v1, v0, :cond_1

    .line 137
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;->mGuideClickInterface:Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog$IGuideClickInterface;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;->mGuideClickInterface:Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog$IGuideClickInterface;

    invoke-interface {v0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog$IGuideClickInterface;->doOk()V

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;->dismiss()V

    .line 142
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 52
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;->initView()V

    .line 54
    return-void
.end method

.method public setGuideClickListener(Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog$IGuideClickInterface;)V
    .locals 0
    .param p1, "guideClickInterface"    # Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog$IGuideClickInterface;

    .line 111
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog;->mGuideClickInterface:Lcn/nubia/server/appmgmt/game/dualscreenmap/GuideDialog$IGuideClickInterface;

    .line 112
    return-void
.end method

.method public show()V
    .locals 0

    .line 116
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 121
    return-void
.end method
