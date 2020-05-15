.class public Lcom/android/internal/widget/CachingIconView;
.super Landroid/widget/ImageView;
.source "CachingIconView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mDesiredVisibility:I

.field private mForceHidden:Z

.field private mInternalSetDrawable:Z

.field private mLastPackage:Ljava/lang/String;

.field private mLastResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method private normalizeIconPackage(Landroid/graphics/drawable/Icon;)Ljava/lang/String;
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 162
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 163
    return-object v0

    .line 166
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "pkg":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    return-object v0

    .line 170
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/CachingIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 171
    return-object v0

    .line 173
    :cond_2
    return-object v1
.end method

.method private declared-synchronized resetCache()V
    .locals 1

    monitor-enter p0

    .line 177
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/CachingIconView;->mLastPackage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/widget/CachingIconView;
    throw v0
.end method

.method private declared-synchronized testAndSetCache(I)Z
    .locals 2
    .param p1, "resId"    # I

    monitor-enter p0

    .line 146
    if-eqz p1, :cond_2

    :try_start_0
    iget v0, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/CachingIconView;->mLastPackage:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 145
    .end local p1    # "resId":I
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 147
    .restart local p1    # "resId":I
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 149
    .local v0, "isCached":Z
    :goto_1
    nop

    .line 151
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/CachingIconView;->mLastPackage:Ljava/lang/String;

    .line 152
    iput p1, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return v0

    .line 145
    .end local v0    # "isCached":Z
    .end local p1    # "resId":I
    :goto_2
    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/widget/CachingIconView;
    throw p1
.end method

.method private declared-synchronized testAndSetCache(Landroid/graphics/drawable/Icon;)Z
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    monitor-enter p0

    .line 124
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 125
    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->normalizeIconPackage(Landroid/graphics/drawable/Icon;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "iconPackage":Ljava/lang/String;
    iget v2, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I

    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/CachingIconView;->mLastPackage:Ljava/lang/String;

    .line 129
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    nop

    .line 131
    .local v0, "isCached":Z
    :cond_0
    iput-object v1, p0, Lcom/android/internal/widget/CachingIconView;->mLastPackage:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/CachingIconView;->mLastResId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return v0

    .line 123
    .end local v0    # "isCached":Z
    .end local v1    # "iconPackage":Ljava/lang/String;
    .end local p1    # "icon":Landroid/graphics/drawable/Icon;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 136
    .restart local p1    # "icon":Landroid/graphics/drawable/Icon;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    monitor-exit p0

    return v0

    .line 123
    .end local p1    # "icon":Landroid/graphics/drawable/Icon;
    :goto_0
    monitor-exit p0

    .end local p0    # "this":Lcom/android/internal/widget/CachingIconView;
    throw p1
.end method

.method private updateVisibility()V
    .locals 1

    .line 197
    iget v0, p0, Lcom/android/internal/widget/CachingIconView;->mDesiredVisibility:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mForceHidden:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 198
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/CachingIconView;->mDesiredVisibility:I

    .line 199
    .local v0, "visibility":I
    :goto_0
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 116
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 117
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    .line 118
    return-void
.end method

.method public setForceHidden(Z)V
    .locals 0
    .param p1, "forceHidden"    # Z

    .line 185
    iput-boolean p1, p0, Lcom/android/internal/widget/CachingIconView;->mForceHidden:Z

    .line 186
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->updateVisibility()V

    .line 187
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 110
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    .line 111
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 112
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 100
    iget-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    if-nez v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    .line 104
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    return-void
.end method

.method public setImageIcon(Landroid/graphics/drawable/Icon;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageIconAsync"
    .end annotation

    .line 54
    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->testAndSetCache(Landroid/graphics/drawable/Icon;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    .line 57
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    .line 60
    :cond_0
    return-void
.end method

.method public setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 64
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    .line 65
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageResourceAsync"
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Lcom/android/internal/widget/CachingIconView;->testAndSetCache(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    .line 74
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/CachingIconView;->mInternalSetDrawable:Z

    .line 77
    :cond_0
    return-void
.end method

.method public setImageResourceAsync(I)Ljava/lang/Runnable;
    .locals 1
    .param p1, "resId"    # I

    .line 81
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    .line 82
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResourceAsync(I)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageURIAsync"
    .end annotation

    .line 88
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    .line 89
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 90
    return-void
.end method

.method public setImageURIAsync(Landroid/net/Uri;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 94
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->resetCache()V

    .line 95
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURIAsync(Landroid/net/Uri;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 192
    iput p1, p0, Lcom/android/internal/widget/CachingIconView;->mDesiredVisibility:I

    .line 193
    invoke-direct {p0}, Lcom/android/internal/widget/CachingIconView;->updateVisibility()V

    .line 194
    return-void
.end method
