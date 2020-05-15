.class public final Landroid/telephony/UssdResponse;
.super Ljava/lang/Object;
.source "UssdResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/UssdResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mReturnMessage:Ljava/lang/CharSequence;

.field private mUssdRequest:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Landroid/telephony/UssdResponse$1;

    invoke-direct {v0}, Landroid/telephony/UssdResponse$1;-><init>()V

    sput-object v0, Landroid/telephony/UssdResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "ussdRequest"    # Ljava/lang/String;
    .param p2, "returnMessage"    # Ljava/lang/CharSequence;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/telephony/UssdResponse;->mUssdRequest:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Landroid/telephony/UssdResponse;->mReturnMessage:Ljava/lang/CharSequence;

    .line 64
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getReturnMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 47
    iget-object v0, p0, Landroid/telephony/UssdResponse;->mReturnMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getUssdRequest()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Landroid/telephony/UssdResponse;->mUssdRequest:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 38
    iget-object v0, p0, Landroid/telephony/UssdResponse;->mUssdRequest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Landroid/telephony/UssdResponse;->mReturnMessage:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 40
    return-void
.end method
