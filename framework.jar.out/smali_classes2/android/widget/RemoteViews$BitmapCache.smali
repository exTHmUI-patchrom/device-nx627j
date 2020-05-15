.class Landroid/widget/RemoteViews$BitmapCache;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapCache"
.end annotation


# instance fields
.field mBitmapMemory:I

.field mBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1194
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:I

    .line 1197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    .line 1198
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1194
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:I

    .line 1201
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    .line 1202
    return-void
.end method


# virtual methods
.method public getBitmapForId(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "id"    # I

    .line 1219
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1222
    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0

    .line 1220
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBitmapId(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .line 1205
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 1206
    return v0

    .line 1208
    :cond_0
    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1209
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 1211
    :cond_1
    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1212
    iput v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:I

    .line 1213
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getBitmapMemory()I
    .locals 4

    .line 1231
    iget v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:I

    if-gez v0, :cond_0

    .line 1232
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:I

    .line 1233
    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1234
    .local v1, "count":I
    nop

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1235
    iget v2, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:I

    iget-object v3, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:I

    .line 1234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1238
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_0
    iget v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapMemory:I

    return v0
.end method

.method public writeBitmapsToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1227
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1228
    return-void
.end method
