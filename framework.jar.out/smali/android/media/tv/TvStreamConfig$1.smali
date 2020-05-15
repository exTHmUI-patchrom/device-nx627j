.class Landroid/media/tv/TvStreamConfig$1;
.super Ljava/lang/Object;
.source "TvStreamConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvStreamConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/tv/TvStreamConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/TvStreamConfig;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 50
    :try_start_0
    new-instance v0, Landroid/media/tv/TvStreamConfig$Builder;

    invoke-direct {v0}, Landroid/media/tv/TvStreamConfig$Builder;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/tv/TvStreamConfig$Builder;->streamId(I)Landroid/media/tv/TvStreamConfig$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/tv/TvStreamConfig$Builder;->type(I)Landroid/media/tv/TvStreamConfig$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/tv/TvStreamConfig$Builder;->maxWidth(I)Landroid/media/tv/TvStreamConfig$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/tv/TvStreamConfig$Builder;->maxHeight(I)Landroid/media/tv/TvStreamConfig$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/tv/TvStreamConfig$Builder;->generation(I)Landroid/media/tv/TvStreamConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/tv/TvStreamConfig$Builder;->build()Landroid/media/tv/TvStreamConfig;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/media/tv/TvStreamConfig;->TAG:Ljava/lang/String;

    const-string v2, "Exception creating TvStreamConfig from parcel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Landroid/media/tv/TvStreamConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/TvStreamConfig;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/media/tv/TvStreamConfig;
    .locals 1
    .param p1, "size"    # I

    .line 64
    new-array v0, p1, [Landroid/media/tv/TvStreamConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Landroid/media/tv/TvStreamConfig$1;->newArray(I)[Landroid/media/tv/TvStreamConfig;

    move-result-object p1

    return-object p1
.end method
