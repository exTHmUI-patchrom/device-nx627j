.class public final Landroid/telephony/VisualVoicemailSmsFilterSettings;
.super Ljava/lang/Object;
.source "VisualVoicemailSmsFilterSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/VisualVoicemailSmsFilterSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CLIENT_PREFIX:Ljava/lang/String; = "//VVM"

.field public static final DEFAULT_DESTINATION_PORT:I = -0x1

.field public static final DEFAULT_ORIGINATING_NUMBERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DESTINATION_PORT_ANY:I = -0x1

.field public static final DESTINATION_PORT_DATA_SMS:I = -0x2


# instance fields
.field public final clientPrefix:Ljava/lang/String;

.field public final destinationPort:I

.field public final originatingNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->DEFAULT_ORIGINATING_NUMBERS:Ljava/util/List;

    .line 165
    new-instance v0, Landroid/telephony/VisualVoicemailSmsFilterSettings$1;

    invoke-direct {v0}, Landroid/telephony/VisualVoicemailSmsFilterSettings$1;-><init>()V

    sput-object v0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    invoke-static {p1}, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->access$100(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->clientPrefix:Ljava/lang/String;

    .line 160
    invoke-static {p1}, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->access$200(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->originatingNumbers:Ljava/util/List;

    .line 161
    invoke-static {p1}, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->access$300(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->destinationPort:I

    .line 162
    invoke-static {p1}, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->access$400(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->packageName:Ljava/lang/String;

    .line 163
    return-void
.end method

.method synthetic constructor <init>(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;Landroid/telephony/VisualVoicemailSmsFilterSettings$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;
    .param p2, "x1"    # Landroid/telephony/VisualVoicemailSmsFilterSettings$1;

    .line 41
    invoke-direct {p0, p1}, Landroid/telephony/VisualVoicemailSmsFilterSettings;-><init>(Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VisualVoicemailSmsFilterSettings clientPrefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->clientPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", originatingNumbers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->originatingNumbers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", destinationPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->destinationPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 190
    iget-object v0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->clientPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->originatingNumbers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 192
    iget v0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->destinationPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget-object v0, p0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    return-void
.end method
