.class public final Landroid/content/pm/SharedLibraryInfo;
.super Ljava/lang/Object;
.source "SharedLibraryInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/SharedLibraryInfo$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_BUILTIN:I = 0x0

.field public static final TYPE_DYNAMIC:I = 0x1

.field public static final TYPE_STATIC:I = 0x2

.field public static final VERSION_UNDEFINED:I = -0x1


# instance fields
.field private final mDeclaringPackage:Landroid/content/pm/VersionedPackage;

.field private final mDependentPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mType:I

.field private final mVersion:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 223
    new-instance v0, Landroid/content/pm/SharedLibraryInfo$1;

    invoke-direct {v0}, Landroid/content/pm/SharedLibraryInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/SharedLibraryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/pm/VersionedPackage;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v6

    .line 100
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;)V

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/SharedLibraryInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/pm/SharedLibraryInfo$1;

    .line 36
    invoke-direct {p0, p1}, Landroid/content/pm/SharedLibraryInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # J
    .param p4, "type"    # I
    .param p5, "declaringPackage"    # Landroid/content/pm/VersionedPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Landroid/content/pm/VersionedPackage;",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;)V"
        }
    .end annotation

    .line 91
    .local p6, "dependentPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Landroid/content/pm/SharedLibraryInfo;->mName:Ljava/lang/String;

    .line 93
    iput-wide p2, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    .line 94
    iput p4, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    .line 95
    iput-object p5, p0, Landroid/content/pm/SharedLibraryInfo;->mDeclaringPackage:Landroid/content/pm/VersionedPackage;

    .line 96
    iput-object p6, p0, Landroid/content/pm/SharedLibraryInfo;->mDependentPackages:Ljava/util/List;

    .line 97
    return-void
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 207
    packed-switch p0, :pswitch_data_0

    .line 218
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 215
    :pswitch_0
    const-string/jumbo v0, "static"

    return-object v0

    .line 212
    :pswitch_1
    const-string v0, "dynamic"

    return-object v0

    .line 209
    :pswitch_2
    const-string v0, "builtin"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public getDeclaringPackage()Landroid/content/pm/VersionedPackage;
    .locals 1

    .line 170
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDeclaringPackage:Landroid/content/pm/VersionedPackage;

    return-object v0
.end method

.method public getDependentPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependentPackages:Ljava/util/List;

    if-nez v0, :cond_0

    .line 180
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 182
    :cond_0
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependentPackages:Ljava/util/List;

    return-object v0
.end method

.method public getLongVersion()J
    .locals 2

    .line 140
    iget-wide v0, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 110
    iget v0, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    return v0
.end method

.method public getVersion()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    iget-wide v0, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    :goto_0
    long-to-int v0, v0

    goto :goto_1

    :cond_0
    iget-wide v0, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    goto :goto_0

    :goto_1
    return v0
.end method

.method public isBuiltin()Z
    .locals 1

    .line 147
    iget v0, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDynamic()Z
    .locals 2

    .line 154
    iget v0, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isStatic()Z
    .locals 2

    .line 161
    iget v0, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SharedLibraryInfo[name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/SharedLibraryInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    invoke-static {v1}, Landroid/content/pm/SharedLibraryInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getDependentPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    const-string v1, " has dependents"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 199
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-wide v0, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 201
    iget v0, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDeclaringPackage:Landroid/content/pm/VersionedPackage;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 203
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependentPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 204
    return-void
.end method
