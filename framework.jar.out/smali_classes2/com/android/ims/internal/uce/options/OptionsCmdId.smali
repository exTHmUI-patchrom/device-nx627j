.class public Lcom/android/ims/internal/uce/options/OptionsCmdId;
.super Ljava/lang/Object;
.source "OptionsCmdId.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/options/OptionsCmdId;",
            ">;"
        }
    .end annotation
.end field

.field public static final UCE_OPTIONS_CMD_GETCONTACTCAP:I = 0x2

.field public static final UCE_OPTIONS_CMD_GETCONTACTLISTCAP:I = 0x3

.field public static final UCE_OPTIONS_CMD_GETMYCDINFO:I = 0x0

.field public static final UCE_OPTIONS_CMD_GET_VERSION:I = 0x5

.field public static final UCE_OPTIONS_CMD_RESPONSEINCOMINGOPTIONS:I = 0x4

.field public static final UCE_OPTIONS_CMD_SETMYCDINFO:I = 0x1

.field public static final UCE_OPTIONS_CMD_UNKNOWN:I = 0x6


# instance fields
.field private mCmdId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Lcom/android/ims/internal/uce/options/OptionsCmdId$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/options/OptionsCmdId$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/options/OptionsCmdId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdId;->mCmdId:I

    .line 66
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdId;->mCmdId:I

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/options/OptionsCmdId;->readFromParcel(Landroid/os/Parcel;)V

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/options/OptionsCmdId$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/ims/internal/uce/options/OptionsCmdId$1;

    .line 24
    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/options/OptionsCmdId;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getCmdId()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdId;->mCmdId:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdId;->mCmdId:I

    .line 98
    return-void
.end method

.method public setCmdId(I)V
    .locals 0
    .param p1, "nCmdId"    # I

    .line 59
    iput p1, p0, Lcom/android/ims/internal/uce/options/OptionsCmdId;->mCmdId:I

    .line 60
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 75
    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsCmdId;->mCmdId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    return-void
.end method
