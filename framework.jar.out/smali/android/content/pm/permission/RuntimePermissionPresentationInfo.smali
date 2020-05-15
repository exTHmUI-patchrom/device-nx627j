.class public final Landroid/content/pm/permission/RuntimePermissionPresentationInfo;
.super Ljava/lang/Object;
.source "RuntimePermissionPresentationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/permission/RuntimePermissionPresentationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_GRANTED:I = 0x1

.field private static final FLAG_STANDARD:I = 0x2


# instance fields
.field private final mFlags:I

.field private final mLabel:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 100
    new-instance v0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo$1;

    invoke-direct {v0}, Landroid/content/pm/permission/RuntimePermissionPresentationInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->mLabel:Ljava/lang/CharSequence;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->mFlags:I

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/permission/RuntimePermissionPresentationInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/pm/permission/RuntimePermissionPresentationInfo$1;

    .line 34
    invoke-direct {p0, p1}, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;ZZ)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "granted"    # Z
    .param p3, "standard"    # Z

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->mLabel:Ljava/lang/CharSequence;

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "flags":I
    if-eqz p2, :cond_0

    .line 53
    or-int/lit8 v0, v0, 0x1

    .line 55
    :cond_0
    if-eqz p3, :cond_1

    .line 56
    or-int/lit8 v0, v0, 0x2

    .line 58
    :cond_1
    iput v0, p0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->mFlags:I

    .line 59
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 86
    iget-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isGranted()Z
    .locals 2

    .line 70
    iget v0, p0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isStandard()Z
    .locals 1

    .line 77
    iget v0, p0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 96
    iget-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 97
    iget v0, p0, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    return-void
.end method
