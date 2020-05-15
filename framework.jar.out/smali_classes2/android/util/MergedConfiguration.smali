.class public Landroid/util/MergedConfiguration;
.super Ljava/lang/Object;
.source "MergedConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/util/MergedConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mGlobalConfig:Landroid/content/res/Configuration;

.field private mMergedConfig:Landroid/content/res/Configuration;

.field private mOverrideConfig:Landroid/content/res/Configuration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Landroid/util/MergedConfiguration$1;

    invoke-direct {v0}, Landroid/util/MergedConfiguration$1;-><init>()V

    sput-object v0, Landroid/util/MergedConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    .line 36
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 37
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "globalConfig"    # Landroid/content/res/Configuration;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    .line 36
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 37
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    .line 47
    invoke-virtual {p0, p1}, Landroid/util/MergedConfiguration;->setGlobalConfiguration(Landroid/content/res/Configuration;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "globalConfig"    # Landroid/content/res/Configuration;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    .line 36
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 37
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    .line 43
    invoke-virtual {p0, p1, p2}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    .line 36
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 37
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    .line 56
    invoke-virtual {p0, p1}, Landroid/util/MergedConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/util/MergedConfiguration$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/util/MergedConfiguration$1;

    .line 33
    invoke-direct {p0, p1}, Landroid/util/MergedConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/util/MergedConfiguration;)V
    .locals 2
    .param p1, "mergedConfiguration"    # Landroid/util/MergedConfiguration;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    .line 36
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 37
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    .line 51
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 52
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 51
    invoke-virtual {p0, v0, v1}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 53
    return-void
.end method

.method private updateMergedConfig()V
    .locals 2

    .line 155
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 156
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 157
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mGlobalConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mOverrideConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .line 171
    instance-of v0, p1, Landroid/util/MergedConfiguration;

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x0

    return v0

    .line 175
    :cond_0
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 176
    :cond_1
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    move-object v1, p1

    check-cast v1, Landroid/util/MergedConfiguration;

    iget-object v1, v1, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method

.method public getGlobalConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 136
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getMergedConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 150
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getOverrideConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 143
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 166
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->hashCode()I

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 67
    const-class v0, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    .line 68
    const-class v0, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 69
    const-class v0, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    .line 70
    return-void
.end method

.method public setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "globalConfig"    # Landroid/content/res/Configuration;
    .param p2, "overrideConfig"    # Landroid/content/res/Configuration;

    .line 96
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 97
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 98
    invoke-direct {p0}, Landroid/util/MergedConfiguration;->updateMergedConfig()V

    .line 99
    return-void
.end method

.method public setGlobalConfiguration(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "globalConfig"    # Landroid/content/res/Configuration;

    .line 107
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 108
    invoke-direct {p0}, Landroid/util/MergedConfiguration;->updateMergedConfig()V

    .line 109
    return-void
.end method

.method public setOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "overrideConfig"    # Landroid/content/res/Configuration;

    .line 117
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 118
    invoke-direct {p0}, Landroid/util/MergedConfiguration;->updateMergedConfig()V

    .line 119
    return-void
.end method

.method public setTo(Landroid/util/MergedConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/util/MergedConfiguration;

    .line 122
    iget-object v0, p1, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    iget-object v1, p1, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0, v1}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 123
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mGlobalConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mOverrideConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unset()V
    .locals 1

    .line 126
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    .line 127
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    .line 128
    invoke-direct {p0}, Landroid/util/MergedConfiguration;->updateMergedConfig()V

    .line 129
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 61
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mGlobalConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 62
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 63
    iget-object v0, p0, Landroid/util/MergedConfiguration;->mMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 64
    return-void
.end method
