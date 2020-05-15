.class public final Landroid/content/pm/InstantAppResolveInfo;
.super Ljava/lang/Object;
.source "InstantAppResolveInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_DIGEST:[B

.field private static final SHA_ALGORITHM:Ljava/lang/String; = "SHA-256"


# instance fields
.field private final mDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

.field private final mExtras:Landroid/os/Bundle;

.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppIntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;

.field private final mShouldLetInstallerDecide:Z

.field private final mVersionCode:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/content/pm/InstantAppResolveInfo;->EMPTY_DIGEST:[B

    .line 211
    new-instance v0, Landroid/content/pm/InstantAppResolveInfo$1;

    invoke-direct {v0}, Landroid/content/pm/InstantAppResolveInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/InstantAppResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;Ljava/util/List;I)V
    .locals 7
    .param p1, "digest"    # Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "versionCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppIntentFilter;",
            ">;I)V"
        }
    .end annotation

    .line 88
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppIntentFilter;>;"
    int-to-long v4, p4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/InstantAppResolveInfo;-><init>(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;Ljava/util/List;JLandroid/os/Bundle;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;Ljava/util/List;JLandroid/os/Bundle;)V
    .locals 8
    .param p1, "digest"    # Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "versionCode"    # J
    .param p6, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppIntentFilter;",
            ">;J",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 95
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppIntentFilter;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/content/pm/InstantAppResolveInfo;-><init>(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;Ljava/util/List;JLandroid/os/Bundle;Z)V

    .line 96
    return-void
.end method

.method private constructor <init>(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;Ljava/util/List;JLandroid/os/Bundle;Z)V
    .locals 2
    .param p1, "digest"    # Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "versionCode"    # J
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "shouldLetInstallerDecide"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppIntentFilter;",
            ">;J",
            "Landroid/os/Bundle;",
            "Z)V"
        }
    .end annotation

    .line 115
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppIntentFilter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 118
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 119
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 121
    :cond_2
    :goto_0
    iput-object p1, p0, Landroid/content/pm/InstantAppResolveInfo;->mDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    .line 122
    if-eqz p3, :cond_3

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    .line 124
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 126
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    .line 128
    :goto_1
    iput-object p2, p0, Landroid/content/pm/InstantAppResolveInfo;->mPackageName:Ljava/lang/String;

    .line 129
    iput-wide p4, p0, Landroid/content/pm/InstantAppResolveInfo;->mVersionCode:J

    .line 130
    iput-object p6, p0, Landroid/content/pm/InstantAppResolveInfo;->mExtras:Landroid/os/Bundle;

    .line 131
    iput-boolean p7, p0, Landroid/content/pm/InstantAppResolveInfo;->mShouldLetInstallerDecide:Z

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 110
    sget-object v1, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->UNDEFINED:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Landroid/content/pm/InstantAppResolveInfo;-><init>(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;Ljava/util/List;JLandroid/os/Bundle;Z)V

    .line 111
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mShouldLetInstallerDecide:Z

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mExtras:Landroid/os/Bundle;

    .line 137
    iget-boolean v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mShouldLetInstallerDecide:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->UNDEFINED:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    .line 139
    iput-object v1, p0, Landroid/content/pm/InstantAppResolveInfo;->mPackageName:Ljava/lang/String;

    .line 140
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    .line 141
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mVersionCode:J

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mPackageName:Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    .line 146
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mVersionCode:J

    .line 149
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppIntentFilter;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstantAppIntentFilter;>;"
    new-instance v1, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-direct {v1, p1}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/InstantAppResolveInfo;-><init>(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;Ljava/util/List;JLandroid/os/Bundle;)V

    .line 103
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public getDigestBytes()[B
    .locals 2

    .line 161
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-static {v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->access$000(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;)[[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestBytes()[[B

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/content/pm/InstantAppResolveInfo;->EMPTY_DIGEST:[B

    :goto_0
    return-object v0
.end method

.method public getDigestPrefix()I
    .locals 2

    .line 165
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefix()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 190
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIntentFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppIntentFilter;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    return-object v0
.end method

.method public getLongVersionCode()J
    .locals 2

    .line 185
    iget-wide v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mVersionCode:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    iget-wide v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mVersionCode:J

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public shouldLetInstallerDecide()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mShouldLetInstallerDecide:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 200
    iget-boolean v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mShouldLetInstallerDecide:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 201
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 202
    iget-boolean v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mShouldLetInstallerDecide:Z

    if-eqz v0, :cond_0

    .line 203
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 206
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 208
    iget-wide v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mVersionCode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 209
    return-void
.end method
