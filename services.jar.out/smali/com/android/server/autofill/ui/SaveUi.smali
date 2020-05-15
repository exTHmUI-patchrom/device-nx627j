.class final Lcom/android/server/autofill/ui/SaveUi;
.super Ljava/lang/Object;
.source "SaveUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;,
        Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AutofillSaveUi"

.field private static final THEME_ID:I = 0x10303bd


# instance fields
.field private final mCompatMode:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private mDestroyed:Z

.field private final mDialog:Landroid/app/Dialog;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

.field private final mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

.field private final mServicePackageName:Ljava/lang/String;

.field private final mSubTitle:Ljava/lang/CharSequence;

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Lcom/android/server/autofill/ui/OverlayControl;Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;Z)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pendingUi"    # Lcom/android/server/autofill/ui/PendingUi;
    .param p3, "serviceLabel"    # Ljava/lang/CharSequence;
    .param p4, "serviceIcon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "servicePackageName"    # Ljava/lang/String;
    .param p6, "componentName"    # Landroid/content/ComponentName;
    .param p7, "info"    # Landroid/service/autofill/SaveInfo;
    .param p8, "valueFinder"    # Landroid/service/autofill/ValueFinder;
    .param p9, "overlayControl"    # Lcom/android/server/autofill/ui/OverlayControl;
    .param p10, "listener"    # Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;
    .param p11, "compatMode"    # Z

    move-object/from16 v0, p0

    move-object/from16 v2, p7

    .line 152
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mHandler:Landroid/os/Handler;

    .line 130
    new-instance v3, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v3}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 153
    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 154
    new-instance v4, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;

    move-object/from16 v5, p10

    invoke-direct {v4, v0, v5}, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;-><init>(Lcom/android/server/autofill/ui/SaveUi;Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;)V

    iput-object v4, v0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;

    .line 155
    move-object/from16 v4, p9

    iput-object v4, v0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 156
    move-object/from16 v6, p5

    iput-object v6, v0, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    .line 157
    move-object/from16 v7, p6

    iput-object v7, v0, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    .line 158
    move/from16 v8, p11

    iput-boolean v8, v0, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    .line 160
    new-instance v9, Landroid/view/ContextThemeWrapper;

    const v10, 0x10303bd

    move-object/from16 v11, p1

    invoke-direct {v9, v11, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 161
    .end local p1    # "context":Landroid/content/Context;
    .local v9, "context":Landroid/content/Context;
    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 162
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const/4 v12, 0x0

    const v13, 0x109003f

    invoke-virtual {v11, v13, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 164
    .local v13, "view":Landroid/view/View;
    const v14, 0x10201c4

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 166
    .local v14, "titleView":Landroid/widget/TextView;
    new-instance v15, Landroid/util/ArraySet;

    const/4 v10, 0x3

    invoke-direct {v15, v10}, Landroid/util/ArraySet;-><init>(I)V

    .line 167
    .local v15, "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getType()I

    move-result v12

    .line 169
    .local v12, "type":I
    and-int/lit8 v16, v12, 0x1

    if-eqz v16, :cond_0

    .line 170
    const v10, 0x10400cb

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_0
    and-int/lit8 v10, v12, 0x2

    if-eqz v10, :cond_1

    .line 173
    const v10, 0x10400c8

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_1
    and-int/lit8 v10, v12, 0x4

    if-eqz v10, :cond_2

    .line 176
    const v10, 0x10400c9

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_2
    and-int/lit8 v10, v12, 0x8

    if-eqz v10, :cond_3

    .line 179
    const v10, 0x10400cc

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_3
    and-int/lit8 v10, v12, 0x10

    if-eqz v10, :cond_4

    .line 182
    const v10, 0x10400ca

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_4
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v10

    const/4 v3, 0x0

    packed-switch v10, :pswitch_data_0

    .line 200
    move v10, v3

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p3, v4, v10

    .line 201
    const v3, 0x10400c4

    invoke-virtual {v9, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-static {v3, v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0

    .line 195
    :pswitch_0
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    .line 196
    invoke-virtual {v15, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v10, v3

    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v10, v3

    const/4 v3, 0x2

    invoke-virtual {v15, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v10, v3

    const/4 v3, 0x3

    aput-object p3, v10, v3

    .line 195
    const v3, 0x10400c6

    invoke-virtual {v9, v3, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    invoke-static {v3, v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    .line 197
    goto :goto_0

    .line 191
    :pswitch_1
    move v10, v3

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 192
    const/4 v10, 0x0

    invoke-virtual {v15, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v3, v10

    const/4 v10, 0x1

    invoke-virtual {v15, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v3, v10

    const/4 v10, 0x2

    aput-object p3, v3, v10

    .line 191
    const v10, 0x10400c5

    invoke-virtual {v9, v10, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    invoke-static {v3, v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    .line 193
    goto :goto_0

    .line 187
    :pswitch_2
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 188
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v10, v3

    const/4 v3, 0x1

    aput-object p3, v10, v3

    .line 187
    const v3, 0x10400c7

    invoke-virtual {v9, v3, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    invoke-static {v3, v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    .line 189
    nop

    .line 203
    :goto_0
    iget-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    move-object/from16 v3, p4

    invoke-direct {v0, v9, v13, v3}, Lcom/android/server/autofill/ui/SaveUi;->setServiceIcon(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 207
    nop

    .line 208
    move-object/from16 v4, p8

    invoke-direct {v0, v9, v13, v4, v2}, Lcom/android/server/autofill/ui/SaveUi;->applyCustomDescription(Landroid/content/Context;Landroid/view/View;Landroid/service/autofill/ValueFinder;Landroid/service/autofill/SaveInfo;)Z

    move-result v10

    .line 209
    .local v10, "hasCustomDescription":Z
    if-eqz v10, :cond_5

    .line 210
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    .line 211
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_7

    const-string v1, "AutofillSaveUi"

    const-string/jumbo v3, "on constructor: applied custom description"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 213
    :cond_5
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    .line 214
    iget-object v1, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    .line 215
    const/16 v1, 0x46b

    invoke-direct {v0, v1, v12}, Lcom/android/server/autofill/ui/SaveUi;->writeLog(II)V

    .line 216
    const v1, 0x10201c1

    .line 217
    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 218
    .local v1, "subtitleContainer":Landroid/view/ViewGroup;
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 219
    .local v3, "subtitleView":Landroid/widget/TextView;
    iget-object v4, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v4, v6, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 225
    .end local v1    # "subtitleContainer":Landroid/view/ViewGroup;
    .end local v3    # "subtitleView":Landroid/widget/TextView;
    :cond_6
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_7

    const-string v1, "AutofillSaveUi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "on constructor: title="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", subTitle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_7
    :goto_1
    const v1, 0x10201c3

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 229
    .local v1, "noButton":Landroid/widget/TextView;
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getNegativeActionStyle()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 230
    const v3, 0x10405af

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 232
    :cond_8
    const v3, 0x10400c3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 234
    :goto_2
    new-instance v3, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$E9O26NP1L_DDYBfaO7fQ0hhPAx8;

    invoke-direct {v3, v0, v2}, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$E9O26NP1L_DDYBfaO7fQ0hhPAx8;-><init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/service/autofill/SaveInfo;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    const v3, 0x10201c5

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 237
    .local v3, "yesButton":Landroid/view/View;
    new-instance v4, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$b3z89RdKv6skukyM-l67uIcvlf0;

    invoke-direct {v4, v0}, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$b3z89RdKv6skukyM-l67uIcvlf0;-><init>(Lcom/android/server/autofill/ui/SaveUi;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    new-instance v4, Landroid/app/Dialog;

    const v5, 0x10303bd

    invoke-direct {v4, v9, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, v0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    .line 240
    iget-object v4, v0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v13}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 244
    iget-object v4, v0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    new-instance v5, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$ckPlzqJfB_ohleAkb5RXKU7mFY8;

    invoke-direct {v5, v0}, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$ckPlzqJfB_ohleAkb5RXKU7mFY8;-><init>(Lcom/android/server/autofill/ui/SaveUi;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 246
    iget-object v4, v0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 247
    .local v4, "window":Landroid/view/Window;
    const/16 v5, 0x7f6

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 248
    const v5, 0x60020

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 251
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 252
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 253
    const/16 v5, 0x51

    invoke-virtual {v4, v5}, Landroid/view/Window;->setGravity(I)V

    .line 254
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 255
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 256
    .local v5, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v6, -0x1

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 257
    const v6, 0x10400c2

    invoke-virtual {v9, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 258
    const v6, 0x103030c

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 260
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/ui/SaveUi;->show()V

    .line 261
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/server/autofill/ui/SaveUi;II)Landroid/metrics/LogMaker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/ui/SaveUi;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(II)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/PendingIntent;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 71
    invoke-static {p0, p1}, Lcom/android/server/autofill/ui/SaveUi;->isValidLink(Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/autofill/ui/SaveUi;)Lcom/android/internal/logging/MetricsLogger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/ui/SaveUi;

    .line 71
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/autofill/ui/SaveUi;)Lcom/android/server/autofill/ui/PendingUi;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/ui/SaveUi;

    .line 71
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    return-object v0
.end method

.method private applyCustomDescription(Landroid/content/Context;Landroid/view/View;Landroid/service/autofill/ValueFinder;Landroid/service/autofill/SaveInfo;)Z
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "saveUiView"    # Landroid/view/View;
    .param p3, "valueFinder"    # Landroid/service/autofill/ValueFinder;
    .param p4, "info"    # Landroid/service/autofill/SaveInfo;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    .line 265
    invoke-virtual/range {p4 .. p4}, Landroid/service/autofill/SaveInfo;->getCustomDescription()Landroid/service/autofill/CustomDescription;

    move-result-object v4

    .line 266
    .local v4, "customDescription":Landroid/service/autofill/CustomDescription;
    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 267
    return v5

    .line 269
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/service/autofill/SaveInfo;->getType()I

    move-result v6

    .line 270
    .local v6, "type":I
    const/16 v0, 0x469

    invoke-direct {v1, v0, v6}, Lcom/android/server/autofill/ui/SaveUi;->writeLog(II)V

    .line 272
    invoke-virtual {v4}, Landroid/service/autofill/CustomDescription;->getPresentation()Landroid/widget/RemoteViews;

    move-result-object v7

    .line 273
    .local v7, "template":Landroid/widget/RemoteViews;
    if-nez v7, :cond_1

    .line 274
    const-string v0, "AutofillSaveUi"

    const-string v8, "No remote view on custom description"

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return v5

    .line 279
    :cond_1
    nop

    .line 280
    invoke-virtual {v4}, Landroid/service/autofill/CustomDescription;->getTransformations()Ljava/util/ArrayList;

    move-result-object v8

    .line 281
    .local v8, "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    if-eqz v8, :cond_2

    .line 282
    invoke-static {v3, v7, v8}, Landroid/service/autofill/InternalTransformation;->batchApply(Landroid/service/autofill/ValueFinder;Landroid/widget/RemoteViews;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 283
    const-string v0, "AutofillSaveUi"

    const-string v9, "could not apply main transformations on custom description"

    invoke-static {v0, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return v5

    .line 288
    :cond_2
    new-instance v0, Lcom/android/server/autofill/ui/SaveUi$1;

    invoke-direct {v0, v1, v6}, Lcom/android/server/autofill/ui/SaveUi$1;-><init>(Lcom/android/server/autofill/ui/SaveUi;I)V

    move-object v9, v0

    .line 326
    .local v9, "handler":Landroid/widget/RemoteViews$OnClickHandler;
    const v0, 0x10303bd

    :try_start_0
    invoke-virtual {v7, v0}, Landroid/widget/RemoteViews;->setApplyTheme(I)V

    .line 327
    const/4 v0, 0x0

    invoke-virtual {v7, v2, v0, v9}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v0

    .line 330
    .local v0, "customSubtitleView":Landroid/view/View;
    nop

    .line 331
    invoke-virtual {v4}, Landroid/service/autofill/CustomDescription;->getUpdates()Ljava/util/ArrayList;

    move-result-object v10

    .line 332
    .local v10, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    if-eqz v10, :cond_b

    .line 333
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 334
    .local v11, "size":I
    sget-boolean v12, Lcom/android/server/autofill/Helper;->sDebug:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v12, :cond_3

    :try_start_1
    const-string v12, "AutofillSaveUi"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "custom description has "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " batch updates"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 374
    .end local v0    # "customSubtitleView":Landroid/view/View;
    .end local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .end local v11    # "size":I
    :catch_0
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v19, v6

    .end local v4    # "customDescription":Landroid/service/autofill/CustomDescription;
    .end local v6    # "type":I
    .local v18, "customDescription":Landroid/service/autofill/CustomDescription;
    .local v19, "type":I
    :goto_0
    move-object/from16 v4, p2

    goto/16 :goto_8

    .line 335
    .end local v18    # "customDescription":Landroid/service/autofill/CustomDescription;
    .end local v19    # "type":I
    .restart local v0    # "customSubtitleView":Landroid/view/View;
    .restart local v4    # "customDescription":Landroid/service/autofill/CustomDescription;
    .restart local v6    # "type":I
    .restart local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .restart local v11    # "size":I
    :cond_3
    :goto_1
    move v12, v5

    .local v12, "i":I
    :goto_2
    if-ge v12, v11, :cond_b

    .line 336
    :try_start_2
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    .line 337
    .local v13, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;"
    iget-object v14, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Landroid/service/autofill/InternalValidator;

    .line 338
    .local v14, "condition":Landroid/service/autofill/InternalValidator;
    if-eqz v14, :cond_9

    invoke-virtual {v14, v3}, Landroid/service/autofill/InternalValidator;->isValid(Landroid/service/autofill/ValueFinder;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 339
    move-object/from16 v18, v4

    move/from16 v19, v6

    goto/16 :goto_6

    .line 342
    :cond_4
    iget-object v15, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Landroid/service/autofill/BatchUpdates;

    .line 344
    .local v15, "batchUpdates":Landroid/service/autofill/BatchUpdates;
    invoke-virtual {v15}, Landroid/service/autofill/BatchUpdates;->getUpdates()Landroid/widget/RemoteViews;

    move-result-object v16

    move-object/from16 v17, v16

    .line 345
    .local v17, "templateUpdates":Landroid/widget/RemoteViews;
    move-object/from16 v5, v17

    if-eqz v5, :cond_6

    .line 346
    .end local v17    # "templateUpdates":Landroid/widget/RemoteViews;
    .local v5, "templateUpdates":Landroid/widget/RemoteViews;
    sget-boolean v16, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v16, :cond_5

    const-string v1, "AutofillSaveUi"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v18, v4

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4    # "customDescription":Landroid/service/autofill/CustomDescription;
    .restart local v18    # "customDescription":Landroid/service/autofill/CustomDescription;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move/from16 v19, v6

    :try_start_4
    const-string v6, "Applying template updates for batch update #"

    .end local v6    # "type":I
    .restart local v19    # "type":I
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 374
    .end local v0    # "customSubtitleView":Landroid/view/View;
    .end local v5    # "templateUpdates":Landroid/widget/RemoteViews;
    .end local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .end local v11    # "size":I
    .end local v12    # "i":I
    .end local v13    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;"
    .end local v14    # "condition":Landroid/service/autofill/InternalValidator;
    .end local v15    # "batchUpdates":Landroid/service/autofill/BatchUpdates;
    .end local v19    # "type":I
    .restart local v6    # "type":I
    :catch_1
    move-exception v0

    move/from16 v19, v6

    move-object/from16 v4, p2

    .end local v6    # "type":I
    .restart local v19    # "type":I
    goto/16 :goto_8

    .line 347
    .end local v18    # "customDescription":Landroid/service/autofill/CustomDescription;
    .end local v19    # "type":I
    .restart local v0    # "customSubtitleView":Landroid/view/View;
    .restart local v4    # "customDescription":Landroid/service/autofill/CustomDescription;
    .restart local v5    # "templateUpdates":Landroid/widget/RemoteViews;
    .restart local v6    # "type":I
    .restart local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .restart local v11    # "size":I
    .restart local v12    # "i":I
    .restart local v13    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;"
    .restart local v14    # "condition":Landroid/service/autofill/InternalValidator;
    .restart local v15    # "batchUpdates":Landroid/service/autofill/BatchUpdates;
    :cond_5
    move-object/from16 v18, v4

    move/from16 v19, v6

    .end local v4    # "customDescription":Landroid/service/autofill/CustomDescription;
    .end local v6    # "type":I
    .restart local v18    # "customDescription":Landroid/service/autofill/CustomDescription;
    .restart local v19    # "type":I
    :goto_3
    invoke-virtual {v5, v2, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_4

    .line 350
    .end local v18    # "customDescription":Landroid/service/autofill/CustomDescription;
    .end local v19    # "type":I
    .restart local v4    # "customDescription":Landroid/service/autofill/CustomDescription;
    .restart local v6    # "type":I
    :cond_6
    move-object/from16 v18, v4

    move/from16 v19, v6

    .line 351
    .end local v4    # "customDescription":Landroid/service/autofill/CustomDescription;
    .end local v6    # "type":I
    .restart local v18    # "customDescription":Landroid/service/autofill/CustomDescription;
    .restart local v19    # "type":I
    :goto_4
    invoke-virtual {v15}, Landroid/service/autofill/BatchUpdates;->getTransformations()Ljava/util/ArrayList;

    move-result-object v1

    .line 352
    .local v1, "batchTransformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    if-eqz v1, :cond_a

    .line 353
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v4, :cond_7

    .line 354
    const-string v4, "AutofillSaveUi"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v5

    const-string v5, "Applying child transformation for batch update #"

    .end local v5    # "templateUpdates":Landroid/widget/RemoteViews;
    .local v20, "templateUpdates":Landroid/widget/RemoteViews;
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 357
    .end local v20    # "templateUpdates":Landroid/widget/RemoteViews;
    .restart local v5    # "templateUpdates":Landroid/widget/RemoteViews;
    :cond_7
    move-object/from16 v20, v5

    .end local v5    # "templateUpdates":Landroid/widget/RemoteViews;
    .restart local v20    # "templateUpdates":Landroid/widget/RemoteViews;
    :goto_5
    invoke-static {v3, v7, v1}, Landroid/service/autofill/InternalTransformation;->batchApply(Landroid/service/autofill/ValueFinder;Landroid/widget/RemoteViews;Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 359
    const-string v4, "AutofillSaveUi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not apply child transformation for batch update #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v4, 0x0

    return v4

    .line 363
    :cond_8
    invoke-virtual {v7, v2, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .end local v1    # "batchTransformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .end local v13    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;"
    .end local v14    # "condition":Landroid/service/autofill/InternalValidator;
    .end local v15    # "batchUpdates":Landroid/service/autofill/BatchUpdates;
    .end local v20    # "templateUpdates":Landroid/widget/RemoteViews;
    goto :goto_7

    .line 339
    .end local v18    # "customDescription":Landroid/service/autofill/CustomDescription;
    .end local v19    # "type":I
    .restart local v4    # "customDescription":Landroid/service/autofill/CustomDescription;
    .restart local v6    # "type":I
    .restart local v13    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;"
    .restart local v14    # "condition":Landroid/service/autofill/InternalValidator;
    :cond_9
    move-object/from16 v18, v4

    move/from16 v19, v6

    .end local v4    # "customDescription":Landroid/service/autofill/CustomDescription;
    .end local v6    # "type":I
    .restart local v18    # "customDescription":Landroid/service/autofill/CustomDescription;
    .restart local v19    # "type":I
    :goto_6
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_a

    const-string v1, "AutofillSaveUi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping batch update #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 335
    .end local v13    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;"
    .end local v14    # "condition":Landroid/service/autofill/InternalValidator;
    :cond_a
    :goto_7
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v18

    move/from16 v6, v19

    move-object/from16 v1, p0

    const/4 v5, 0x0

    goto/16 :goto_2

    .line 374
    .end local v0    # "customSubtitleView":Landroid/view/View;
    .end local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .end local v11    # "size":I
    .end local v12    # "i":I
    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 369
    .end local v18    # "customDescription":Landroid/service/autofill/CustomDescription;
    .end local v19    # "type":I
    .restart local v0    # "customSubtitleView":Landroid/view/View;
    .restart local v4    # "customDescription":Landroid/service/autofill/CustomDescription;
    .restart local v6    # "type":I
    .restart local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :cond_b
    move-object/from16 v18, v4

    move/from16 v19, v6

    .end local v4    # "customDescription":Landroid/service/autofill/CustomDescription;
    .end local v6    # "type":I
    .restart local v18    # "customDescription":Landroid/service/autofill/CustomDescription;
    .restart local v19    # "type":I
    const v1, 0x10201c1

    .line 370
    move-object/from16 v4, p2

    :try_start_5
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 371
    .local v1, "subtitleContainer":Landroid/view/ViewGroup;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 372
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 373
    const/4 v5, 0x1

    return v5

    .line 374
    .end local v0    # "customSubtitleView":Landroid/view/View;
    .end local v1    # "subtitleContainer":Landroid/view/ViewGroup;
    .end local v10    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :catch_3
    move-exception v0

    goto :goto_8

    .end local v18    # "customDescription":Landroid/service/autofill/CustomDescription;
    .end local v19    # "type":I
    .restart local v4    # "customDescription":Landroid/service/autofill/CustomDescription;
    .restart local v6    # "type":I
    :catch_4
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v19, v6

    move-object/from16 v4, p2

    .line 375
    .end local v4    # "customDescription":Landroid/service/autofill/CustomDescription;
    .end local v6    # "type":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "customDescription":Landroid/service/autofill/CustomDescription;
    .restart local v19    # "type":I
    :goto_8
    const-string v1, "AutofillSaveUi"

    const-string v5, "Error applying custom description. "

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method private static isValidLink(Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 3
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 405
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 406
    const-string v1, "AutofillSaveUi"

    const-string/jumbo v2, "isValidLink(): custom description without pending intent"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return v0

    .line 409
    :cond_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v1

    if-nez v1, :cond_1

    .line 410
    const-string v1, "AutofillSaveUi"

    const-string/jumbo v2, "isValidLink(): pending intent not for activity"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return v0

    .line 413
    :cond_1
    if-nez p1, :cond_2

    .line 414
    const-string v1, "AutofillSaveUi"

    const-string/jumbo v2, "isValidLink(): no intent"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return v0

    .line 417
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/autofill/ui/SaveUi;Landroid/service/autofill/SaveInfo;Landroid/view/View;)V
    .locals 2
    .param p1, "info"    # Landroid/service/autofill/SaveInfo;
    .param p2, "v"    # Landroid/view/View;

    .line 234
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;

    invoke-virtual {p1}, Landroid/service/autofill/SaveInfo;->getNegativeActionListener()Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;->onCancel(Landroid/content/IntentSender;)V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/autofill/ui/SaveUi;Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 237
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;->onSave()V

    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/android/server/autofill/ui/SaveUi;Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "d"    # Landroid/content/DialogInterface;

    .line 244
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;->onCancel(Landroid/content/IntentSender;)V

    return-void
.end method

.method private newLogMaker(I)Landroid/metrics/LogMaker;
    .locals 4
    .param p1, "category"    # I

    .line 425
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    iget v2, v2, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    iget-boolean v3, p0, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method private newLogMaker(II)Landroid/metrics/LogMaker;
    .locals 3
    .param p1, "category"    # I
    .param p2, "saveType"    # I

    .line 421
    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x46a

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method private setServiceIcon(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "serviceIcon"    # Landroid/graphics/drawable/Drawable;

    .line 381
    const v0, 0x10201c2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 382
    .local v0, "iconView":Landroid/widget/ImageView;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 384
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x105002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 385
    .local v2, "maxWidth":I
    move v3, v2

    .line 386
    .local v3, "maxHeight":I
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    .line 387
    .local v4, "actualWidth":I
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    .line 389
    .local v5, "actualHeight":I
    if-gt v4, v2, :cond_1

    if-gt v5, v3, :cond_1

    .line 390
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_0

    .line 391
    const-string v6, "AutofillSaveUi"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding service icon ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") as it\'s less than maximum ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 397
    :cond_1
    const-string v6, "AutofillSaveUi"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not adding service icon of size ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") because maximum is ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 402
    :goto_0
    return-void
.end method

.method private show()V
    .locals 3

    .line 470
    const-string v0, "AutofillSaveUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Showing save dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 472
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/OverlayControl;->hideOverlays()V

    .line 473
    return-void
.end method

.method private throwIfDestroyed()V
    .locals 2

    .line 499
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 502
    return-void

    .line 500
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot interact with a destroyed instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeLog(II)V
    .locals 2
    .param p1, "category"    # I
    .param p2, "saveType"    # I

    .line 430
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(II)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 431
    return-void
.end method


# virtual methods
.method destroy()V
    .locals 2

    .line 487
    :try_start_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillSaveUi"

    const-string v1, "destroy()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_0
    invoke-direct {p0}, Lcom/android/server/autofill/ui/SaveUi;->throwIfDestroyed()V

    .line 489
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;->onDestroy()V

    .line 490
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 491
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    .line 495
    nop

    .line 496
    return-void

    .line 494
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 510
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "title: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 511
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "subtitle: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 512
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "pendingUi: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 513
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "app: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "compat mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 517
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 518
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    .line 519
    .local v1, "loc":[I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "coordinates: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 520
    const/16 v2, 0x28

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    const/4 v3, 0x0

    aget v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    const/4 v5, 0x1

    aget v6, v1, v5

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const/16 v6, 0x29

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 521
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 522
    aget v2, v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 523
    aget v2, v1, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(C)V

    .line 524
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "destroyed: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mDestroyed:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 525
    return-void
.end method

.method hide()Lcom/android/server/autofill/ui/PendingUi;
    .locals 2

    .line 476
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillSaveUi"

    const-string v1, "Hiding save dialog."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    .line 481
    nop

    .line 482
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    return-object v0

    .line 480
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    throw v0
.end method

.method onPendingUi(ILandroid/os/IBinder;)V
    .locals 4
    .param p1, "operation"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 441
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v0, p2}, Lcom/android/server/autofill/ui/PendingUi;->matches(Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    const-string v0, "AutofillSaveUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restore("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): got token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " instead of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 443
    invoke-virtual {v2}, Lcom/android/server/autofill/ui/PendingUi;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-void

    .line 446
    :cond_0
    const/16 v0, 0x46e

    invoke-direct {p0, v0}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 448
    .local v0, "log":Landroid/metrics/LogMaker;
    packed-switch p1, :pswitch_data_0

    .line 460
    const/16 v1, 0xb

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    goto :goto_0

    .line 450
    :pswitch_0
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "AutofillSaveUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restoring save dialog for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 452
    invoke-direct {p0}, Lcom/android/server/autofill/ui/SaveUi;->show()V

    .line 453
    goto :goto_1

    .line 455
    :pswitch_1
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 456
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "AutofillSaveUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancelling pending save dialog for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/SaveUi;->hide()Lcom/android/server/autofill/ui/PendingUi;

    .line 458
    goto :goto_1

    .line 461
    :goto_0
    const-string v1, "AutofillSaveUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restore(): invalid operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    :goto_1
    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 465
    nop

    .line 466
    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/ui/PendingUi;->setState(I)V

    .line 467
    return-void

    .line 464
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string v0, "NO TITLE"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
