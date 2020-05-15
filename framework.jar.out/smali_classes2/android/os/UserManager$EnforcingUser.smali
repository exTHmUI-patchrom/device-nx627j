.class public final Landroid/os/UserManager$EnforcingUser;
.super Ljava/lang/Object;
.source "UserManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnforcingUser"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/UserManager$EnforcingUser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final userId:I

.field private final userRestrictionSource:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2868
    new-instance v0, Landroid/os/UserManager$EnforcingUser$1;

    invoke-direct {v0}, Landroid/os/UserManager$EnforcingUser$1;-><init>()V

    sput-object v0, Landroid/os/UserManager$EnforcingUser;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "userRestrictionSource"    # I

    .line 2858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2859
    iput p1, p0, Landroid/os/UserManager$EnforcingUser;->userId:I

    .line 2860
    iput p2, p0, Landroid/os/UserManager$EnforcingUser;->userRestrictionSource:I

    .line 2861
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2864
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/UserManager$EnforcingUser;->userId:I

    .line 2865
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/UserManager$EnforcingUser;->userRestrictionSource:I

    .line 2866
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/UserManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/os/UserManager$1;

    .line 2850
    invoke-direct {p0, p1}, Landroid/os/UserManager$EnforcingUser;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 2882
    const/4 v0, 0x0

    return v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 1

    .line 2897
    iget v0, p0, Landroid/os/UserManager$EnforcingUser;->userId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getUserRestrictionSource()I
    .locals 1

    .line 2908
    iget v0, p0, Landroid/os/UserManager$EnforcingUser;->userRestrictionSource:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2887
    iget v0, p0, Landroid/os/UserManager$EnforcingUser;->userId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2888
    iget v0, p0, Landroid/os/UserManager$EnforcingUser;->userRestrictionSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2889
    return-void
.end method
