.class Landroid/telephony/NetworkRegistrationState$1;
.super Ljava/lang/Object;
.source "NetworkRegistrationState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/NetworkRegistrationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/NetworkRegistrationState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/NetworkRegistrationState;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 322
    new-instance v0, Landroid/telephony/NetworkRegistrationState;

    invoke-direct {v0, p1}, Landroid/telephony/NetworkRegistrationState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 319
    invoke-virtual {p0, p1}, Landroid/telephony/NetworkRegistrationState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/NetworkRegistrationState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telephony/NetworkRegistrationState;
    .locals 1
    .param p1, "size"    # I

    .line 327
    new-array v0, p1, [Landroid/telephony/NetworkRegistrationState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 319
    invoke-virtual {p0, p1}, Landroid/telephony/NetworkRegistrationState$1;->newArray(I)[Landroid/telephony/NetworkRegistrationState;

    move-result-object p1

    return-object p1
.end method
