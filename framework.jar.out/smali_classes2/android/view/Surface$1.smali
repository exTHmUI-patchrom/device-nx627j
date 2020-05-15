.class Landroid/view/Surface$1;
.super Ljava/lang/Object;
.source "Surface.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Surface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/Surface;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/Surface;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 91
    :try_start_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    .line 92
    .local v0, "s":Landroid/view/Surface;
    invoke-virtual {v0, p1}, Landroid/view/Surface;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    return-object v0

    .line 94
    .end local v0    # "s":Landroid/view/Surface;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Surface"

    const-string v2, "Exception creating surface from parcel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Landroid/view/Surface$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/Surface;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/Surface;
    .locals 1
    .param p1, "size"    # I

    .line 102
    new-array v0, p1, [Landroid/view/Surface;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Landroid/view/Surface$1;->newArray(I)[Landroid/view/Surface;

    move-result-object p1

    return-object p1
.end method
