.class public Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;
.super Landroid/app/Dialog;
.source "GuideDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog$IGuideClickInterface;
    }
.end annotation


# static fields
.field public static final GAME_TENCENT_SGAME:Ljava/lang/String; = "com.tencent.tmgp.sgame"

.field private static final TAG:Ljava/lang/String; = "GuideDialog"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialogAnim:Landroid/view/View;

.field private mGuideClickInterface:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog$IGuideClickInterface;

.field private mHandler:Landroid/os/Handler;

.field private mJoinButton:Landroid/widget/Button;

.field private mRunnable:Ljava/lang/Runnable;

.field private msg:Landroid/widget/TextView;

.field private showGameName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    const v0, 0x30e0009

    invoke-direct {p0, p1, v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;-><init>(Landroid/content/Context;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;->mHandler:Landroid/os/Handler;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;->showGameName:Ljava/lang/String;

    .line 38
    new-instance v0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog$1;-><init>(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;)V

    iput-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;->mRunnable:Ljava/lang/Runnable;

    .line 53
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;

    .line 24
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;->mDialogAnim:Landroid/view/View;

    return-object v0
.end method

.method private initView()V
    .locals 5

    .line 63
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 64
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x30a0010

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 65
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;->setContentView(Landroid/view/View;)V

    .line 66
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;->setCanceledOnTouchOutside(Z)V

    .line 68
    const v2, 0x3080060

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;->mJoinButton:Landroid/widget/Button;

    .line 69
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;->mJoinButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v2, 0x3080076

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;->msg:Landroid/widget/TextView;

    .line 72
    const v2, 0x3080032

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;->mDialogAnim:Landroid/view/View;

    .line 73
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;->showGameName:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "com.tencent.tmgp.sgame"

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;->showGameName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;->mDialogAnim:Landroid/view/View;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x30700c8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;->msg:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;->mContext:Landroid/content/Context;

    const v4, 0x30c0071

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;->mDialogAnim:Landroid/view/View;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x30700c7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v2, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;->msg:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;->mContext:Landroid/content/Context;

    const v4, 0x30c0070

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :goto_0
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;->setAttributes()V

    .line 111
    return-void
.end method

.method private setAttributes()V
    .locals 3

    .line 114
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 115
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 116
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 117
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 118
    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 119
    const/16 v2, 0x7d8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 120
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 122
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 142
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 149
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x3080060

    if-ne v1, v0, :cond_1

    .line 154
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;->mGuideClickInterface:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog$IGuideClickInterface;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;->mGuideClickInterface:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog$IGuideClickInterface;

    invoke-interface {v0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog$IGuideClickInterface;->doOk()V

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;->dismiss()V

    .line 159
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 58
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-direct {p0}, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;->initView()V

    .line 60
    return-void
.end method

.method public setGuideClickListener(Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog$IGuideClickInterface;)V
    .locals 0
    .param p1, "guideClickInterface"    # Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog$IGuideClickInterface;

    .line 125
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;->mGuideClickInterface:Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog$IGuideClickInterface;

    .line 126
    return-void
.end method

.method public show()V
    .locals 0

    .line 133
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 138
    return-void
.end method

.method public showGuideGamePackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "gamePackageName"    # Ljava/lang/String;

    .line 129
    iput-object p1, p0, Lcn/nubia/server/appmgmt/game/dualhandstankscreenmap/GuideDialog;->showGameName:Ljava/lang/String;

    .line 130
    return-void
.end method
