.class public final Landroid/app/PictureInPictureArgs;
.super Ljava/lang/Object;
.source "PictureInPictureArgs.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/PictureInPictureArgs$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/PictureInPictureArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAspectRatio:Landroid/util/Rational;

.field private mSourceRectHint:Landroid/graphics/Rect;

.field private mSourceRectHintInsets:Landroid/graphics/Rect;

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
.method static constructor <clinit>()V
    .locals 1

    .line 345
    new-instance v0, Landroid/app/PictureInPictureArgs$1;

    invoke-direct {v0}, Landroid/app/PictureInPictureArgs$1;-><init>()V

    sput-object v0, Landroid/app/PictureInPictureArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    return-void
.end method

.method public constructor <init>(FLjava/util/List;)V
    .locals 0
    .param p1, "aspectRatio"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    .local p2, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-virtual {p0, p1}, Landroid/app/PictureInPictureArgs;->setAspectRatio(F)V

    .line 149
    invoke-virtual {p0, p2}, Landroid/app/PictureInPictureArgs;->setActions(Ljava/util/List;)V

    .line 150
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Landroid/util/Rational;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    .line 156
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    .line 158
    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    const-class v1, Landroid/app/RemoteAction;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    .line 160
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    .line 163
    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/PictureInPictureArgs$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/PictureInPictureArgs$1;

    .line 30
    invoke-direct {p0, p1}, Landroid/app/PictureInPictureArgs;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "aspectRatio"    # Landroid/util/Rational;
    .param p3, "sourceRectHint"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Rational;",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 166
    .local p2, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    .line 168
    iput-object p2, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    .line 169
    iput-object p3, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    .line 170
    return-void
.end method

.method synthetic constructor <init>(Landroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;Landroid/app/PictureInPictureArgs$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/util/Rational;
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Landroid/graphics/Rect;
    .param p4, "x3"    # Landroid/app/PictureInPictureArgs$1;

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/app/PictureInPictureArgs;-><init>(Landroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static convert(Landroid/app/PictureInPictureParams;)Landroid/app/PictureInPictureArgs;
    .locals 4
    .param p0, "params"    # Landroid/app/PictureInPictureParams;

    .line 356
    new-instance v0, Landroid/app/PictureInPictureArgs;

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->getAspectRatioRational()Landroid/util/Rational;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->getActions()Ljava/util/List;

    move-result-object v2

    .line 357
    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/PictureInPictureArgs;-><init>(Landroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;)V

    .line 356
    return-object v0
.end method

.method public static convert(Landroid/app/PictureInPictureArgs;)Landroid/app/PictureInPictureParams;
    .locals 4
    .param p0, "args"    # Landroid/app/PictureInPictureArgs;

    .line 361
    new-instance v0, Landroid/app/PictureInPictureParams;

    invoke-virtual {p0}, Landroid/app/PictureInPictureArgs;->getAspectRatioRational()Landroid/util/Rational;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/PictureInPictureArgs;->getActions()Ljava/util/List;

    move-result-object v2

    .line 362
    invoke-virtual {p0}, Landroid/app/PictureInPictureArgs;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/PictureInPictureParams;-><init>(Landroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;)V

    .line 361
    return-object v0
.end method


# virtual methods
.method public copyOnlySet(Landroid/app/PictureInPictureArgs;)V
    .locals 2
    .param p1, "otherArgs"    # Landroid/app/PictureInPictureArgs;

    .line 211
    invoke-virtual {p1}, Landroid/app/PictureInPictureArgs;->hasSetAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p1, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    .line 214
    :cond_0
    invoke-virtual {p1}, Landroid/app/PictureInPictureArgs;->hasSetActions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p1, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    .line 217
    :cond_1
    invoke-virtual {p1}, Landroid/app/PictureInPictureArgs;->hasSourceBoundsHint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/app/PictureInPictureArgs;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    .line 220
    :cond_2
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    return-object v0
.end method

.method public getAspectRatio()F
    .locals 1

    .line 227
    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    return v0

    .line 230
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAspectRatioRational()Landroid/util/Rational;
    .locals 1

    .line 235
    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    return-object v0
.end method

.method public getSourceRectHint()Landroid/graphics/Rect;
    .locals 1

    .line 290
    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSourceRectHintInsets()Landroid/graphics/Rect;
    .locals 1

    .line 298
    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHintInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hasSetActions()Z
    .locals 1

    .line 259
    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSetAspectRatio()Z
    .locals 1

    .line 243
    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSourceBoundsHint()Z
    .locals 1

    .line 306
    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSourceBoundsHintInsets()Z
    .locals 1

    .line 314
    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHintInsets:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setActions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    .line 189
    :cond_0
    if-eqz p1, :cond_1

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    .line 192
    :cond_1
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 3
    .param p1, "aspectRatio"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 178
    new-instance v0, Landroid/util/Rational;

    const v1, 0x4e6e6b28    # 1.0E9f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    const v2, 0x3b9aca00

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    .line 179
    return-void
.end method

.method public setSourceRectHint(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "launchBounds"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    if-nez p1, :cond_0

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    goto :goto_0

    .line 202
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    .line 204
    :goto_0
    return-void
.end method

.method public setSourceRectHintInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 278
    if-nez p1, :cond_0

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHintInsets:Landroid/graphics/Rect;

    goto :goto_0

    .line 281
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHintInsets:Landroid/graphics/Rect;

    .line 283
    :goto_0
    return-void
.end method

.method public truncateActions(I)V
    .locals 3
    .param p1, "size"    # I

    .line 267
    invoke-virtual {p0}, Landroid/app/PictureInPictureArgs;->hasSetActions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    .line 270
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 324
    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    invoke-virtual {v0}, Landroid/util/Rational;->getNumerator()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    invoke-virtual {v0}, Landroid/util/Rational;->getDenominator()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    :goto_0
    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    goto :goto_1

    .line 335
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    :goto_1
    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 338
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 341
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    :goto_2
    return-void
.end method
