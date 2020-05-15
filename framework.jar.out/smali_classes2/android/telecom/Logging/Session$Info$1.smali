.class Landroid/telecom/Logging/Session$Info$1;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Logging/Session$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/Logging/Session$Info;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/Logging/Session$Info;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "methodName":Ljava/lang/String;
    new-instance v2, Landroid/telecom/Logging/Session$Info;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Landroid/telecom/Logging/Session$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$1;)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Landroid/telecom/Logging/Session$Info$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/Logging/Session$Info;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telecom/Logging/Session$Info;
    .locals 1
    .param p1, "size"    # I

    .line 83
    new-array v0, p1, [Landroid/telecom/Logging/Session$Info;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Landroid/telecom/Logging/Session$Info$1;->newArray(I)[Landroid/telecom/Logging/Session$Info;

    move-result-object p1

    return-object p1
.end method
