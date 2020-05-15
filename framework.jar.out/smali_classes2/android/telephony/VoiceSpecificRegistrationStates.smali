.class public Landroid/telephony/VoiceSpecificRegistrationStates;
.super Ljava/lang/Object;
.source "VoiceSpecificRegistrationStates.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/VoiceSpecificRegistrationStates;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final cssSupported:Z

.field public final defaultRoamingIndicator:I

.field public final roamingIndicator:I

.field public final systemIsInPrl:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    new-instance v0, Landroid/telephony/VoiceSpecificRegistrationStates$1;

    invoke-direct {v0}, Landroid/telephony/VoiceSpecificRegistrationStates$1;-><init>()V

    sput-object v0, Landroid/telephony/VoiceSpecificRegistrationStates;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/VoiceSpecificRegistrationStates;->cssSupported:Z

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/VoiceSpecificRegistrationStates;->roamingIndicator:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/VoiceSpecificRegistrationStates;->systemIsInPrl:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/VoiceSpecificRegistrationStates;->defaultRoamingIndicator:I

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/VoiceSpecificRegistrationStates$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telephony/VoiceSpecificRegistrationStates$1;

    .line 13
    invoke-direct {p0, p1}, Landroid/telephony/VoiceSpecificRegistrationStates;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(ZIII)V
    .locals 0
    .param p1, "cssSupported"    # Z
    .param p2, "roamingIndicator"    # I
    .param p3, "systemIsInPrl"    # I
    .param p4, "defaultRoamingIndicator"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean p1, p0, Landroid/telephony/VoiceSpecificRegistrationStates;->cssSupported:Z

    .line 46
    iput p2, p0, Landroid/telephony/VoiceSpecificRegistrationStates;->roamingIndicator:I

    .line 47
    iput p3, p0, Landroid/telephony/VoiceSpecificRegistrationStates;->systemIsInPrl:I

    .line 48
    iput p4, p0, Landroid/telephony/VoiceSpecificRegistrationStates;->defaultRoamingIndicator:I

    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 88
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 90
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    instance-of v2, p1, Landroid/telephony/VoiceSpecificRegistrationStates;

    if-nez v2, :cond_1

    goto :goto_1

    .line 94
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/VoiceSpecificRegistrationStates;

    .line 95
    .local v2, "other":Landroid/telephony/VoiceSpecificRegistrationStates;
    iget-boolean v3, p0, Landroid/telephony/VoiceSpecificRegistrationStates;->cssSupported:Z

    iget-boolean v4, v2, Landroid/telephony/VoiceSpecificRegistrationStates;->cssSupported:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/VoiceSpecificRegistrationStates;->roamingIndicator:I

    iget v4, v2, Landroid/telephony/VoiceSpecificRegistrationStates;->roamingIndicator:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/VoiceSpecificRegistrationStates;->systemIsInPrl:I

    iget v4, v2, Landroid/telephony/VoiceSpecificRegistrationStates;->systemIsInPrl:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/VoiceSpecificRegistrationStates;->defaultRoamingIndicator:I

    iget v4, v2, Landroid/telephony/VoiceSpecificRegistrationStates;->defaultRoamingIndicator:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 91
    .end local v2    # "other":Landroid/telephony/VoiceSpecificRegistrationStates;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/telephony/VoiceSpecificRegistrationStates;->cssSupported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/VoiceSpecificRegistrationStates;->roamingIndicator:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/VoiceSpecificRegistrationStates;->systemIsInPrl:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/VoiceSpecificRegistrationStates;->defaultRoamingIndicator:I

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 82
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceSpecificRegistrationStates { mCssSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/VoiceSpecificRegistrationStates;->cssSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mRoamingIndicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/VoiceSpecificRegistrationStates;->roamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSystemIsInPrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/VoiceSpecificRegistrationStates;->systemIsInPrl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mDefaultRoamingIndicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/VoiceSpecificRegistrationStates;->defaultRoamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 60
    iget-boolean v0, p0, Landroid/telephony/VoiceSpecificRegistrationStates;->cssSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 61
    iget v0, p0, Landroid/telephony/VoiceSpecificRegistrationStates;->roamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v0, p0, Landroid/telephony/VoiceSpecificRegistrationStates;->systemIsInPrl:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget v0, p0, Landroid/telephony/VoiceSpecificRegistrationStates;->defaultRoamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    return-void
.end method
