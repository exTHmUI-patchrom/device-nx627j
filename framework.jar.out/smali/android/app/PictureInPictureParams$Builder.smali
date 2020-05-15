.class public Landroid/app/PictureInPictureParams$Builder;
.super Ljava/lang/Object;
.source "PictureInPictureParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PictureInPictureParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAspectRatio:Landroid/util/Rational;

.field private mSourceRectHint:Landroid/graphics/Rect;

.field private mUserActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/app/PictureInPictureParams;
    .locals 4

    .line 112
    new-instance v0, Landroid/app/PictureInPictureParams;

    iget-object v1, p0, Landroid/app/PictureInPictureParams$Builder;->mAspectRatio:Landroid/util/Rational;

    iget-object v2, p0, Landroid/app/PictureInPictureParams$Builder;->mUserActions:Ljava/util/List;

    iget-object v3, p0, Landroid/app/PictureInPictureParams$Builder;->mSourceRectHint:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v2, v3}, Landroid/app/PictureInPictureParams;-><init>(Landroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;)V

    .line 114
    .local v0, "params":Landroid/app/PictureInPictureParams;
    return-object v0
.end method

.method public setActions(Ljava/util/List;)Landroid/app/PictureInPictureParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)",
            "Landroid/app/PictureInPictureParams$Builder;"
        }
    .end annotation

    .line 74
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    iget-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mUserActions:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mUserActions:Ljava/util/List;

    .line 77
    :cond_0
    if-eqz p1, :cond_1

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mUserActions:Ljava/util/List;

    .line 80
    :cond_1
    return-object p0
.end method

.method public setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;
    .locals 0
    .param p1, "aspectRatio"    # Landroid/util/Rational;

    .line 58
    iput-object p1, p0, Landroid/app/PictureInPictureParams$Builder;->mAspectRatio:Landroid/util/Rational;

    .line 59
    return-object p0
.end method

.method public setSourceRectHint(Landroid/graphics/Rect;)Landroid/app/PictureInPictureParams$Builder;
    .locals 1
    .param p1, "launchBounds"    # Landroid/graphics/Rect;

    .line 96
    if-nez p1, :cond_0

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mSourceRectHint:Landroid/graphics/Rect;

    goto :goto_0

    .line 99
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/app/PictureInPictureParams$Builder;->mSourceRectHint:Landroid/graphics/Rect;

    .line 101
    :goto_0
    return-object p0
.end method
