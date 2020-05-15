.class public final Landroid/app/PictureInPictureParams;
.super Ljava/lang/Object;
.source "PictureInPictureParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/PictureInPictureParams$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/PictureInPictureParams;",
            ">;"
        }
    .end annotation
.end field


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
.method static constructor <clinit>()V
    .locals 1

    .line 274
    new-instance v0, Landroid/app/PictureInPictureParams$1;

    invoke-direct {v0}, Landroid/app/PictureInPictureParams$1;-><init>()V

    sput-object v0, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Landroid/util/Rational;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    iput-object v0, p0, Landroid/app/PictureInPictureParams;->mAspectRatio:Landroid/util/Rational;

    .line 147
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/PictureInPictureParams;->mUserActions:Ljava/util/List;

    .line 149
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mUserActions:Ljava/util/List;

    const-class v1, Landroid/app/RemoteAction;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    .line 151
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/PictureInPictureParams;->mSourceRectHint:Landroid/graphics/Rect;

    .line 154
    :cond_2
    return-void
.end method

.method constructor <init>(Landroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;)V
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

    .line 158
    .local p2, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Landroid/app/PictureInPictureParams;->mAspectRatio:Landroid/util/Rational;

    .line 160
    iput-object p2, p0, Landroid/app/PictureInPictureParams;->mUserActions:Ljava/util/List;

    .line 161
    iput-object p3, p0, Landroid/app/PictureInPictureParams;->mSourceRectHint:Landroid/graphics/Rect;

    .line 162
    return-void
.end method


# virtual methods
.method public copyOnlySet(Landroid/app/PictureInPictureParams;)V
    .locals 2
    .param p1, "otherArgs"    # Landroid/app/PictureInPictureParams;

    .line 169
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->hasSetAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p1, Landroid/app/PictureInPictureParams;->mAspectRatio:Landroid/util/Rational;

    iput-object v0, p0, Landroid/app/PictureInPictureParams;->mAspectRatio:Landroid/util/Rational;

    .line 172
    :cond_0
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->hasSetActions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p1, Landroid/app/PictureInPictureParams;->mUserActions:Ljava/util/List;

    iput-object v0, p0, Landroid/app/PictureInPictureParams;->mUserActions:Ljava/util/List;

    .line 175
    :cond_1
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->hasSourceBoundsHint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/app/PictureInPictureParams;->mSourceRectHint:Landroid/graphics/Rect;

    .line 178
    :cond_2
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 248
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

    .line 209
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mUserActions:Ljava/util/List;

    return-object v0
.end method

.method public getAspectRatio()F
    .locals 1

    .line 185
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mAspectRatio:Landroid/util/Rational;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mAspectRatio:Landroid/util/Rational;

    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    return v0

    .line 188
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAspectRatioRational()Landroid/util/Rational;
    .locals 1

    .line 193
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mAspectRatio:Landroid/util/Rational;

    return-object v0
.end method

.method public getSourceRectHint()Landroid/graphics/Rect;
    .locals 1

    .line 235
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mSourceRectHint:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hasSetActions()Z
    .locals 1

    .line 217
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mUserActions:Ljava/util/List;

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

    .line 201
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mAspectRatio:Landroid/util/Rational;

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

    .line 243
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mSourceRectHint:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mSourceRectHint:Landroid/graphics/Rect;

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

.method public truncateActions(I)V
    .locals 3
    .param p1, "size"    # I

    .line 225
    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->hasSetActions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mUserActions:Ljava/util/List;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/PictureInPictureParams;->mUserActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams;->mUserActions:Ljava/util/List;

    .line 228
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 253
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mAspectRatio:Landroid/util/Rational;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mAspectRatio:Landroid/util/Rational;

    invoke-virtual {v0}, Landroid/util/Rational;->getNumerator()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mAspectRatio:Landroid/util/Rational;

    invoke-virtual {v0}, Landroid/util/Rational;->getDenominator()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    :goto_0
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mUserActions:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mUserActions:Ljava/util/List;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    goto :goto_1

    .line 264
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    :goto_1
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mSourceRectHint:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 267
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mSourceRectHint:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 270
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    :goto_2
    return-void
.end method
