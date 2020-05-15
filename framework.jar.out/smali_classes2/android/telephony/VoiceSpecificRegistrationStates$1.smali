.class Landroid/telephony/VoiceSpecificRegistrationStates$1;
.super Ljava/lang/Object;
.source "VoiceSpecificRegistrationStates.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/VoiceSpecificRegistrationStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/VoiceSpecificRegistrationStates;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/VoiceSpecificRegistrationStates;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 106
    new-instance v0, Landroid/telephony/VoiceSpecificRegistrationStates;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/VoiceSpecificRegistrationStates;-><init>(Landroid/os/Parcel;Landroid/telephony/VoiceSpecificRegistrationStates$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Landroid/telephony/VoiceSpecificRegistrationStates$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/VoiceSpecificRegistrationStates;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telephony/VoiceSpecificRegistrationStates;
    .locals 1
    .param p1, "size"    # I

    .line 111
    new-array v0, p1, [Landroid/telephony/VoiceSpecificRegistrationStates;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Landroid/telephony/VoiceSpecificRegistrationStates$1;->newArray(I)[Landroid/telephony/VoiceSpecificRegistrationStates;

    move-result-object p1

    return-object p1
.end method
