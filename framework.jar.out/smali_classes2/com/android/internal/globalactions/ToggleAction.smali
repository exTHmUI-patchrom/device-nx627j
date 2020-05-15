.class public abstract Lcom/android/internal/globalactions/ToggleAction;
.super Ljava/lang/Object;
.source "ToggleAction.java"

# interfaces
.implements Lcom/android/internal/globalactions/Action;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/globalactions/ToggleAction$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ToggleAction"


# instance fields
.field protected mDisabledIconResid:I

.field protected mDisabledStatusMessageResId:I

.field protected mEnabledIconResId:I

.field protected mEnabledStatusMessageResId:I

.field protected mMessageResId:I

.field protected mState:Lcom/android/internal/globalactions/ToggleAction$State;


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1
    .param p1, "enabledIconResId"    # I
    .param p2, "disabledIconResid"    # I
    .param p3, "message"    # I
    .param p4, "enabledStatusMessageResId"    # I
    .param p5, "disabledStatusMessageResId"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    iput-object v0, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 72
    iput p1, p0, Lcom/android/internal/globalactions/ToggleAction;->mEnabledIconResId:I

    .line 73
    iput p2, p0, Lcom/android/internal/globalactions/ToggleAction;->mDisabledIconResid:I

    .line 74
    iput p3, p0, Lcom/android/internal/globalactions/ToggleAction;->mMessageResId:I

    .line 75
    iput p4, p0, Lcom/android/internal/globalactions/ToggleAction;->mEnabledStatusMessageResId:I

    .line 76
    iput p5, p0, Lcom/android/internal/globalactions/ToggleAction;->mDisabledStatusMessageResId:I

    .line 77
    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 1
    .param p1, "buttonOn"    # Z

    .line 147
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 148
    return-void
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/globalactions/ToggleAction;->willCreate()V

    .line 94
    const/4 v0, 0x0

    const v1, 0x109006b

    invoke-virtual {p4, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 96
    .local v1, "v":Landroid/view/View;
    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 97
    .local v2, "icon":Landroid/widget/ImageView;
    const v3, 0x102000b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 98
    .local v3, "messageView":Landroid/widget/TextView;
    const v4, 0x1020426

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 99
    .local v4, "statusView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/internal/globalactions/ToggleAction;->isEnabled()Z

    move-result v5

    .line 101
    .local v5, "enabled":Z
    if-eqz v3, :cond_0

    .line 102
    iget v6, p0, Lcom/android/internal/globalactions/ToggleAction;->mMessageResId:I

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 103
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 106
    :cond_0
    iget-object v6, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    sget-object v7, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    if-eq v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    sget-object v7, Lcom/android/internal/globalactions/ToggleAction$State;->TurningOn:Lcom/android/internal/globalactions/ToggleAction$State;

    if-ne v6, v7, :cond_1

    goto :goto_0

    :cond_1
    move v6, v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v6, 0x1

    .line 107
    .local v6, "on":Z
    :goto_1
    if-eqz v2, :cond_4

    .line 108
    nop

    .line 109
    if-eqz v6, :cond_3

    iget v7, p0, Lcom/android/internal/globalactions/ToggleAction;->mEnabledIconResId:I

    goto :goto_2

    :cond_3
    iget v7, p0, Lcom/android/internal/globalactions/ToggleAction;->mDisabledIconResid:I

    .line 108
    :goto_2
    invoke-virtual {p1, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 113
    :cond_4
    if-eqz v4, :cond_6

    .line 114
    if-eqz v6, :cond_5

    iget v7, p0, Lcom/android/internal/globalactions/ToggleAction;->mEnabledStatusMessageResId:I

    goto :goto_3

    :cond_5
    iget v7, p0, Lcom/android/internal/globalactions/ToggleAction;->mDisabledStatusMessageResId:I

    :goto_3
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 115
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 118
    :cond_6
    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 120
    return-object v1
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    iget v0, p0, Lcom/android/internal/globalactions/ToggleAction;->mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ToggleAction$State;->inTransition()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final onPress()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    invoke-virtual {v0}, Lcom/android/internal/globalactions/ToggleAction$State;->inTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "ToggleAction"

    const-string/jumbo v1, "shouldn\'t be able to toggle when in transition"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    sget-object v1, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 131
    .local v0, "nowOn":Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/globalactions/ToggleAction;->onToggle(Z)V

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/internal/globalactions/ToggleAction;->changeStateFromPress(Z)V

    .line 133
    return-void
.end method

.method public abstract onToggle(Z)V
.end method

.method public updateState(Lcom/android/internal/globalactions/ToggleAction$State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/internal/globalactions/ToggleAction$State;

    .line 153
    iput-object p1, p0, Lcom/android/internal/globalactions/ToggleAction;->mState:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 154
    return-void
.end method

.method willCreate()V
    .locals 0

    .line 82
    return-void
.end method
