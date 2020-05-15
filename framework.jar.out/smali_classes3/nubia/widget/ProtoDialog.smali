.class public Lnubia/widget/ProtoDialog;
.super Ljava/lang/Object;
.source "ProtoDialog.java"

# interfaces
.implements Lnubia/widget/IDialog;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lnubia/widget/ProtoDialog;->mContext:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public getAlertDialogBackgroud(Landroid/content/res/TypedArray;II)I
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "styleId"    # I
    .param p3, "defaultId"    # I

    .line 38
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method public getAlertTitleId()I
    .locals 1

    .line 63
    const v0, 0x102019d

    return v0
.end method

.method public getButtonPanelId()I
    .locals 1

    .line 93
    const v0, 0x10201de

    return v0
.end method

.method public getContentPanelId()I
    .locals 1

    .line 68
    const v0, 0x102020d

    return v0
.end method

.method public getCustomId()I
    .locals 1

    .line 88
    const v0, 0x102002b

    return v0
.end method

.method public getCustomPanelId()I
    .locals 1

    .line 83
    const v0, 0x1020214

    return v0
.end method

.method public getMessageId()I
    .locals 1

    .line 78
    const v0, 0x102000b

    return v0
.end method

.method public getParentPanelId()I
    .locals 1

    .line 98
    const v0, 0x102036b

    return v0
.end method

.method public getScrollViewId()I
    .locals 1

    .line 73
    const v0, 0x10203c9

    return v0
.end method

.method public getTitleTemplateId()I
    .locals 1

    .line 58
    const v0, 0x102046c

    return v0
.end method

.method public getTopPanelId()I
    .locals 1

    .line 53
    const v0, 0x1020476

    return v0
.end method

.method public isResetDialogButtonStyle()Z
    .locals 1

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public resetAlertDialogLayout()Z
    .locals 1

    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public resetShowWindowAttributes(Landroid/view/Window;)V
    .locals 0
    .param p1, "window"    # Landroid/view/Window;

    .line 24
    return-void
.end method

.method public setBlankViewOnClickEvent()Z
    .locals 1

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public setCanceledOnTouchOutside(Lcom/android/internal/app/AlertController;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "alert"    # Lcom/android/internal/app/AlertController;
    .param p2, "flag"    # Ljava/lang/Boolean;

    .line 29
    return-void
.end method

.method public setExitAnimation(Landroid/app/Activity;II)V
    .locals 0
    .param p1, "actv"    # Landroid/app/Activity;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I

    .line 44
    return-void
.end method
