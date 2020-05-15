.class public final Landroid/app/job/JobInfo$TriggerContentUri;
.super Ljava/lang/Object;
.source "JobInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TriggerContentUri"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobInfo$TriggerContentUri$Flags;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/job/JobInfo$TriggerContentUri;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_NOTIFY_FOR_DESCENDANTS:I = 0x1


# instance fields
.field private final mFlags:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 963
    new-instance v0, Landroid/app/job/JobInfo$TriggerContentUri$1;

    invoke-direct {v0}, Landroid/app/job/JobInfo$TriggerContentUri$1;-><init>()V

    sput-object v0, Landroid/app/job/JobInfo$TriggerContentUri;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "flags"    # I

    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 915
    iput-object p1, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mUri:Landroid/net/Uri;

    .line 916
    iput p2, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mFlags:I

    .line 917
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 947
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 948
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mUri:Landroid/net/Uri;

    .line 949
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mFlags:I

    .line 950
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/job/JobInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/job/JobInfo$1;

    .line 891
    invoke-direct {p0, p1}, Landroid/app/job/JobInfo$TriggerContentUri;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 954
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 935
    instance-of v0, p1, Landroid/app/job/JobInfo$TriggerContentUri;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 936
    return v1

    .line 938
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/app/job/JobInfo$TriggerContentUri;

    .line 939
    .local v0, "t":Landroid/app/job/JobInfo$TriggerContentUri;
    iget-object v2, v0, Landroid/app/job/JobInfo$TriggerContentUri;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/app/job/JobInfo$TriggerContentUri;->mFlags:I

    iget v3, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mFlags:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public getFlags()I
    .locals 1

    .line 930
    iget v0, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mFlags:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 923
    iget-object v0, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 944
    iget-object v0, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    :goto_0
    iget v1, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mFlags:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 959
    iget-object v0, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 960
    iget v0, p0, Landroid/app/job/JobInfo$TriggerContentUri;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 961
    return-void
.end method
