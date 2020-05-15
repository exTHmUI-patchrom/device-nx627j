.class public Landroid/widget/NubiaTextExtractorHelper;
.super Ljava/lang/Object;
.source "NubiaTextExtractorHelper.java"


# static fields
.field private static final CANCLE_RECOGNITION:I = 0x4

.field private static final NEED_OCR:I = 0x0

.field private static final NO_NEED_OCR:I = 0x3

.field private static final TAG:Ljava/lang/String; = "NubiaTextExtractorHelper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDecorView:Landroid/widget/FrameLayout;

.field private mHasAddIndicatorViewFlag:Z

.field private mIsExtractionCanceled:Z

.field private mIsImmersive:Z

.field private mLongPressDownX:F

.field private mLongPressDownY:F

.field private mRowX:F

.field private mRowY:F

.field private mTextIndicatorAnim:Landroid/animation/ObjectAnimator;

.field private mTextIndicatorView:Landroid/view/View;

.field private mTouchedTextView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "decorView"    # Landroid/widget/FrameLayout;
    .param p3, "touchedTextView"    # Landroid/view/View;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/NubiaTextExtractorHelper;->mContext:Landroid/content/Context;

    .line 41
    iput-object v0, p0, Landroid/widget/NubiaTextExtractorHelper;->mDecorView:Landroid/widget/FrameLayout;

    .line 43
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/NubiaTextExtractorHelper;->mHasAddIndicatorViewFlag:Z

    .line 45
    iput-object v0, p0, Landroid/widget/NubiaTextExtractorHelper;->mTextIndicatorView:Landroid/view/View;

    .line 47
    iput-object v0, p0, Landroid/widget/NubiaTextExtractorHelper;->mTextIndicatorAnim:Landroid/animation/ObjectAnimator;

    .line 49
    iput-object v0, p0, Landroid/widget/NubiaTextExtractorHelper;->mTouchedTextView:Landroid/view/View;

    .line 54
    iput-boolean v1, p0, Landroid/widget/NubiaTextExtractorHelper;->mIsExtractionCanceled:Z

    .line 60
    iput-boolean v1, p0, Landroid/widget/NubiaTextExtractorHelper;->mIsImmersive:Z

    .line 63
    iput-object p1, p0, Landroid/widget/NubiaTextExtractorHelper;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Landroid/widget/NubiaTextExtractorHelper;->mDecorView:Landroid/widget/FrameLayout;

    .line 65
    iput-object p3, p0, Landroid/widget/NubiaTextExtractorHelper;->mTouchedTextView:Landroid/view/View;

    .line 66
    return-void
.end method

.method private goToTextSuccessExtracted()V
    .locals 8

    .line 146
    iget-object v0, p0, Landroid/widget/NubiaTextExtractorHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "className":Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/NubiaTextExtractorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/NubiaTextExtractorHelper;->mTouchedTextView:Landroid/view/View;

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/NubiaTextExtractorHelper;->mTouchedTextView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 150
    iget-object v2, p0, Landroid/widget/NubiaTextExtractorHelper;->mTouchedTextView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getFindText()Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "foundText":Ljava/lang/String;
    iget-object v5, p0, Landroid/widget/NubiaTextExtractorHelper;->mTouchedTextView:Landroid/view/View;

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getFindTextIndex()I

    move-result v5

    .line 152
    .local v5, "index":I
    const/4 v6, 0x0

    .line 153
    .local v6, "checkFoundText":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 154
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 156
    :cond_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 157
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 158
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "text"

    invoke-virtual {v4, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v7, "index"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    const-string/jumbo v7, "type"

    invoke-virtual {v4, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    invoke-direct {p0, v4}, Landroid/widget/NubiaTextExtractorHelper;->startService(Landroid/content/Intent;)V

    .line 162
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 163
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 164
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "type"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    invoke-direct {p0, v3}, Landroid/widget/NubiaTextExtractorHelper;->startService(Landroid/content/Intent;)V

    .line 167
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 170
    .end local v2    # "foundText":Ljava/lang/String;
    .end local v5    # "index":I
    .end local v6    # "checkFoundText":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .line 171
    .local v2, "contentDescription":Ljava/lang/CharSequence;
    iget-object v5, p0, Landroid/widget/NubiaTextExtractorHelper;->mTouchedTextView:Landroid/view/View;

    if-eqz v5, :cond_3

    invoke-virtual {p0, v1}, Landroid/widget/NubiaTextExtractorHelper;->needContentDesciption(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 172
    const/4 v5, 0x1

    invoke-direct {p0, v1, v5}, Landroid/widget/NubiaTextExtractorHelper;->setScreenRecognitionForAccessibilityManager(Ljava/lang/String;Z)V

    .line 173
    iget-object v5, p0, Landroid/widget/NubiaTextExtractorHelper;->mTouchedTextView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 174
    invoke-direct {p0, v1, v4}, Landroid/widget/NubiaTextExtractorHelper;->setScreenRecognitionForAccessibilityManager(Ljava/lang/String;Z)V

    .line 176
    :cond_3
    if-eqz v2, :cond_4

    .line 177
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 178
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string/jumbo v5, "text"

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    invoke-direct {p0, v4}, Landroid/widget/NubiaTextExtractorHelper;->startService(Landroid/content/Intent;)V

    .line 181
    .end local v4    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 182
    :cond_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 183
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v5, "type"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    invoke-direct {p0, v3}, Landroid/widget/NubiaTextExtractorHelper;->startService(Landroid/content/Intent;)V

    .line 187
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "contentDescription":Ljava/lang/CharSequence;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    :goto_1
    return-void
.end method

.method private isMySelf()Z
    .locals 2

    .line 279
    iget-object v0, p0, Landroid/widget/NubiaTextExtractorHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Landroid/widget/NubiaTextExtractorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "cn.nubia.smartrecognition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    const/4 v1, 0x1

    return v1

    .line 285
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setScreenRecognitionForAccessibilityManager(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isScreenRecognitionOn"    # Z

    .line 96
    if-eqz p1, :cond_0

    const-string v0, "com.tencent.mm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Landroid/widget/NubiaTextExtractorHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityManager;->setScreenRecognition(Z)V

    .line 99
    :cond_0
    return-void
.end method

.method private startService(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .line 102
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/widget/NubiaTextExtractorHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 105
    :cond_0
    iget-object v0, p0, Landroid/widget/NubiaTextExtractorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "pkgName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 107
    .local v1, "activityName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 108
    .local v2, "claName":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 109
    .local v3, "leftLoc":[I
    const/4 v4, 0x0

    .line 110
    .local v4, "width":I
    const/4 v5, 0x0

    .line 111
    .local v5, "height":I
    iget-object v6, p0, Landroid/widget/NubiaTextExtractorHelper;->mTouchedTextView:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 112
    iget-object v6, p0, Landroid/widget/NubiaTextExtractorHelper;->mTouchedTextView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 113
    iget-object v6, p0, Landroid/widget/NubiaTextExtractorHelper;->mTouchedTextView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 114
    iget-object v6, p0, Landroid/widget/NubiaTextExtractorHelper;->mTouchedTextView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 115
    iget-object v6, p0, Landroid/widget/NubiaTextExtractorHelper;->mTouchedTextView:Landroid/view/View;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 117
    :cond_1
    iget-object v6, p0, Landroid/widget/NubiaTextExtractorHelper;->mDecorView:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/NubiaTextExtractorHelper;->mDecorView:Landroid/widget/FrameLayout;

    instance-of v6, v6, Lcom/android/internal/policy/DecorView;

    if-eqz v6, :cond_2

    .line 119
    :try_start_0
    iget-object v6, p0, Landroid/widget/NubiaTextExtractorHelper;->mDecorView:Landroid/widget/FrameLayout;

    check-cast v6, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v6}, Lcom/android/internal/policy/DecorView;->getCurrentActivityName()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v6

    .line 122
    goto :goto_0

    .line 120
    :catch_0
    move-exception v6

    .line 121
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "NubiaTextExtractorHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get activityName erro "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    const-string/jumbo v6, "rowX"

    iget v7, p0, Landroid/widget/NubiaTextExtractorHelper;->mRowX:F

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 125
    const-string/jumbo v6, "rowY"

    iget v7, p0, Landroid/widget/NubiaTextExtractorHelper;->mRowY:F

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 126
    const-string/jumbo v6, "x"

    iget v7, p0, Landroid/widget/NubiaTextExtractorHelper;->mLongPressDownX:F

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 127
    const-string/jumbo v6, "y"

    iget v7, p0, Landroid/widget/NubiaTextExtractorHelper;->mLongPressDownY:F

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 128
    const-string v6, "leftX"

    const/4 v7, 0x0

    aget v7, v3, v7

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    const-string v6, "leftY"

    const/4 v7, 0x1

    aget v7, v3, v7

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    const-string/jumbo v6, "width"

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    const-string v6, "height"

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    const-string/jumbo v6, "package"

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string/jumbo v6, "viewClassName"

    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v6, "isImmersive"

    iget-boolean v7, p0, Landroid/widget/NubiaTextExtractorHelper;->mIsImmersive:Z

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 135
    const-string v6, "activityName"

    invoke-virtual {p1, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "cn.nubia.smartrecognition"

    const-string v8, "cn.nubia.smartrecognition.service.TakeScreenShotService"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 137
    const-string v6, "cn.nubia.smartrecognition.TakeScreenShotService"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    :try_start_1
    iget-object v6, p0, Landroid/widget/NubiaTextExtractorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 142
    goto :goto_1

    .line 140
    :catch_1
    move-exception v6

    .line 141
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v7, "NubiaTextExtractorHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception occured while trying to start super snapshot"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 103
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "activityName":Ljava/lang/String;
    .end local v2    # "claName":Ljava/lang/String;
    .end local v3    # "leftLoc":[I
    .end local v4    # "width":I
    .end local v5    # "height":I
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public dealWithView()V
    .locals 2

    .line 87
    invoke-virtual {p0}, Landroid/widget/NubiaTextExtractorHelper;->isRecognitionNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    const-string v0, "NubiaTextExtractorHelper"

    const-string v1, "isRecognitionNeeded false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void

    .line 91
    :cond_0
    invoke-direct {p0}, Landroid/widget/NubiaTextExtractorHelper;->goToTextSuccessExtracted()V

    .line 92
    return-void
.end method

.method public isButtonView()Z
    .locals 2

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "ret":Z
    iget-object v1, p0, Landroid/widget/NubiaTextExtractorHelper;->mTouchedTextView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/NubiaTextExtractorHelper;->mTouchedTextView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 252
    const/4 v0, 0x1

    .line 254
    :cond_0
    return v0
.end method

.method public isEditView(Ljava/lang/String;)Z
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "ret":Z
    iget-object v1, p0, Landroid/widget/NubiaTextExtractorHelper;->mTouchedTextView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/NubiaTextExtractorHelper;->mTouchedTextView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 216
    const/4 v0, 0x1

    goto :goto_0

    .line 217
    :cond_0
    if-eqz p1, :cond_2

    .line 218
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "edittext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "search.view"

    .line 219
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    :cond_1
    const/4 v0, 0x1

    .line 222
    :cond_2
    :goto_0
    return v0
.end method

.method public isImageView(Ljava/lang/String;)Z
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "ret":Z
    if-eqz p1, :cond_1

    const-string v1, "cn.nubia.gallery3d.ui.GLRootView"

    .line 244
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imageview"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    :cond_0
    const/4 v0, 0x1

    .line 247
    :cond_1
    return v0
.end method

.method public isImmersive()Z
    .locals 5

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "isImmersive":Z
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 194
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/widget/NubiaTextExtractorHelper;->mTouchedTextView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 195
    iget-object v2, p0, Landroid/widget/NubiaTextExtractorHelper;->mTouchedTextView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 196
    const-string v2, "NubiaTextExtractorHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rect top: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget v2, v1, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_0

    .line 198
    const/4 v0, 0x1

    .line 201
    :cond_0
    return v0
.end method

.method public isLandscape()Z
    .locals 4

    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "isLandscape":Z
    iget-object v1, p0, Landroid/widget/NubiaTextExtractorHelper;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Landroid/widget/NubiaTextExtractorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 207
    .local v1, "mConfiguration":Landroid/content/res/Configuration;
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 208
    const/4 v0, 0x1

    .line 211
    .end local v1    # "mConfiguration":Landroid/content/res/Configuration;
    :cond_0
    return v0
.end method

.method public isMapView(Ljava/lang/String;)Z
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "ret":Z
    if-eqz p1, :cond_1

    const-string/jumbo v1, "map"

    .line 227
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Map"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MAP"

    .line 228
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    :cond_0
    const/4 v0, 0x1

    .line 231
    :cond_1
    return v0
.end method

.method public isPkgNubiaGallery()Z
    .locals 4

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "ret":Z
    iget-object v1, p0, Landroid/widget/NubiaTextExtractorHelper;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 259
    const/4 v1, 0x0

    .line 260
    .local v1, "className":Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/NubiaTextExtractorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "pkgName":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "cn.nubia.gallery3d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    const/4 v0, 0x1

    .line 265
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public isRecognitionNeeded()Z
    .locals 6

    .line 289
    invoke-direct {p0}, Landroid/widget/NubiaTextExtractorHelper;->isMySelf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    const/4 v0, 0x0

    return v0

    .line 292
    :cond_0
    const/4 v0, 0x1

    .line 293
    .local v0, "ret":Z
    const/4 v1, 0x0

    .line 294
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/widget/NubiaTextExtractorHelper;->isImmersive()Z

    move-result v2

    .line 295
    .local v2, "isImmersive":Z
    invoke-virtual {p0}, Landroid/widget/NubiaTextExtractorHelper;->isImmersive()Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/NubiaTextExtractorHelper;->mIsImmersive:Z

    .line 296
    invoke-virtual {p0}, Landroid/widget/NubiaTextExtractorHelper;->isPkgNubiaGallery()Z

    move-result v3

    .line 297
    .local v3, "isPkgNubiaGallery":Z
    iget-object v4, p0, Landroid/widget/NubiaTextExtractorHelper;->mTouchedTextView:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/NubiaTextExtractorHelper;->mTouchedTextView:Landroid/view/View;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 298
    iget-object v4, p0, Landroid/widget/NubiaTextExtractorHelper;->mTouchedTextView:Landroid/view/View;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 300
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/NubiaTextExtractorHelper;->isImageView(Ljava/lang/String;)Z

    move-result v4

    .line 301
    .local v4, "isImageView":Z
    invoke-virtual {p0}, Landroid/widget/NubiaTextExtractorHelper;->isLandscape()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 302
    const/4 v0, 0x0

    goto :goto_0

    .line 303
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/NubiaTextExtractorHelper;->isVideoOrGameView(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 304
    const/4 v0, 0x0

    goto :goto_0

    .line 305
    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/NubiaTextExtractorHelper;->isMapView(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 306
    const/4 v0, 0x0

    goto :goto_0

    .line 307
    :cond_4
    if-eqz v2, :cond_5

    if-eqz v4, :cond_5

    .line 308
    const/4 v0, 0x1

    goto :goto_0

    .line 309
    :cond_5
    if-eqz v3, :cond_6

    .line 310
    const/4 v0, 0x0

    goto :goto_0

    .line 311
    :cond_6
    if-eqz v2, :cond_7

    .line 312
    const/4 v0, 0x0

    goto :goto_0

    .line 313
    :cond_7
    invoke-virtual {p0, v1}, Landroid/widget/NubiaTextExtractorHelper;->isEditView(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 314
    const/4 v0, 0x0

    goto :goto_0

    .line 315
    :cond_8
    invoke-virtual {p0}, Landroid/widget/NubiaTextExtractorHelper;->isButtonView()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 316
    const/4 v0, 0x0

    goto :goto_0

    .line 317
    :cond_9
    if-eqz v4, :cond_a

    .line 318
    const/4 v0, 0x0

    .line 320
    :cond_a
    :goto_0
    return v0
.end method

.method public isVideoOrGameView(Ljava/lang/String;)Z
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "ret":Z
    if-eqz p1, :cond_0

    .line 236
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "surfaceview"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    const/4 v0, 0x1

    .line 239
    :cond_0
    return v0
.end method

.method public needContentDesciption(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 268
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 269
    return v0

    .line 271
    :cond_0
    const-string v1, "com.tencent.mm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    const/4 v0, 0x1

    return v0

    .line 274
    :cond_1
    return v0
.end method

.method public setIsExtractionCanceled(Z)V
    .locals 0
    .param p1, "isCanceled"    # Z

    .line 69
    iput-boolean p1, p0, Landroid/widget/NubiaTextExtractorHelper;->mIsExtractionCanceled:Z

    .line 70
    return-void
.end method

.method public setRowXY(FF)V
    .locals 0
    .param p1, "rowX"    # F
    .param p2, "rowY"    # F

    .line 78
    iput p1, p0, Landroid/widget/NubiaTextExtractorHelper;->mRowX:F

    .line 79
    iput p2, p0, Landroid/widget/NubiaTextExtractorHelper;->mRowY:F

    .line 80
    return-void
.end method

.method public setTouchTextView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 83
    iput-object p1, p0, Landroid/widget/NubiaTextExtractorHelper;->mTouchedTextView:Landroid/view/View;

    .line 84
    return-void
.end method

.method public setXY(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 73
    iput p1, p0, Landroid/widget/NubiaTextExtractorHelper;->mLongPressDownX:F

    .line 74
    iput p2, p0, Landroid/widget/NubiaTextExtractorHelper;->mLongPressDownY:F

    .line 75
    return-void
.end method

.method protected startServiceWhenActionCancel()V
    .locals 5

    .line 323
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 324
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "type"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.smartrecognition"

    const-string v3, "cn.nubia.smartrecognition.service.TakeScreenShotService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 326
    const-string v1, "cn.nubia.smartrecognition.TakeScreenShotService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    :try_start_0
    iget-object v1, p0, Landroid/widget/NubiaTextExtractorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    goto :goto_0

    .line 329
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "NubiaTextExtractorHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured while trying to start super snapshot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
