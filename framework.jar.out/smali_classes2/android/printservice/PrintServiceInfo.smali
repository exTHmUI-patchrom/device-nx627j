.class public final Landroid/printservice/PrintServiceInfo;
.super Ljava/lang/Object;
.source "PrintServiceInfo.java"

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
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG_PRINT_SERVICE:Ljava/lang/String; = "print-service"


# instance fields
.field private final mAddPrintersActivityName:Ljava/lang/String;

.field private final mAdvancedPrintOptionsActivityName:Ljava/lang/String;

.field private final mId:Ljava/lang/String;

.field private mIsEnabled:Z

.field private final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private final mSettingsActivityName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/printservice/PrintServiceInfo;->LOG_TAG:Ljava/lang/String;

    .line 331
    new-instance v0, Landroid/printservice/PrintServiceInfo$1;

    invoke-direct {v0}, Landroid/printservice/PrintServiceInfo$1;-><init>()V

    sput-object v0, Landroid/printservice/PrintServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "settingsActivityName"    # Ljava/lang/String;
    .param p3, "addPrintersActivityName"    # Ljava/lang/String;
    .param p4, "advancedPrintOptionsActivityName"    # Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    .line 98
    iput-object p1, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 99
    iput-object p2, p0, Landroid/printservice/PrintServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 100
    iput-object p3, p0, Landroid/printservice/PrintServiceInfo;->mAddPrintersActivityName:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Landroid/printservice/PrintServiceInfo;->mAdvancedPrintOptionsActivityName:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/printservice/PrintServiceInfo;->mIsEnabled:Z

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/printservice/PrintServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/printservice/PrintServiceInfo;->mAddPrintersActivityName:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/printservice/PrintServiceInfo;->mAdvancedPrintOptionsActivityName:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/printservice/PrintServiceInfo;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "settingsActivityName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 126
    .local v1, "addPrintersActivityName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 128
    .local v2, "advancedPrintOptionsActivityName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 129
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 130
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v6, "android.printservice"

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 132
    if-eqz v3, :cond_3

    .line 134
    const/4 v5, 0x0

    move v6, v5

    .line 135
    .local v6, "type":I
    :goto_0
    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    const/4 v8, 0x2

    if-eq v6, v8, :cond_0

    .line 136
    :try_start_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    move v6, v7

    goto :goto_0

    .line 139
    :cond_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 140
    .local v8, "nodeName":Ljava/lang/String;
    const-string/jumbo v9, "print-service"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 141
    sget-object v5, Landroid/printservice/PrintServiceInfo;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Ignoring meta-data that does not start with print-service tag"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 144
    :cond_1
    iget-object v9, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v9

    .line 146
    .local v9, "resources":Landroid/content/res/Resources;
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v10

    .line 147
    .local v10, "allAttributes":Landroid/util/AttributeSet;
    sget-object v11, Lcom/android/internal/R$styleable;->PrintService:[I

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 150
    .local v11, "attributes":Landroid/content/res/TypedArray;
    invoke-virtual {v11, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 153
    invoke-virtual {v11, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 156
    const/4 v5, 0x3

    invoke-virtual {v11, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 159
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .end local v6    # "type":I
    .end local v8    # "nodeName":Ljava/lang/String;
    .end local v9    # "resources":Landroid/content/res/Resources;
    .end local v10    # "allAttributes":Landroid/util/AttributeSet;
    .end local v11    # "attributes":Landroid/content/res/TypedArray;
    :goto_1
    if-eqz v3, :cond_3

    .line 170
    :goto_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_4

    .line 169
    :catchall_0
    move-exception v5

    goto :goto_3

    .line 165
    :catch_0
    move-exception v5

    .line 166
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    sget-object v6, Landroid/printservice/PrintServiceInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load resources for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    if-eqz v3, :cond_3

    goto :goto_2

    .line 163
    :catch_1
    move-exception v5

    .line 164
    .local v5, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v6, Landroid/printservice/PrintServiceInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading meta-data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v5    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v3, :cond_3

    goto :goto_2

    .line 161
    :catch_2
    move-exception v5

    .line 162
    .local v5, "ioe":Ljava/io/IOException;
    sget-object v6, Landroid/printservice/PrintServiceInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading meta-data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    .end local v5    # "ioe":Ljava/io/IOException;
    if-eqz v3, :cond_3

    goto :goto_2

    :goto_3
    if-eqz v3, :cond_2

    .line 170
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v5

    .line 175
    :cond_3
    :goto_4
    new-instance v5, Landroid/printservice/PrintServiceInfo;

    invoke-direct {v5, p1, v0, v1, v2}, Landroid/printservice/PrintServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 296
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 297
    return v0

    .line 299
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 300
    return v1

    .line 302
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 303
    return v1

    .line 305
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/printservice/PrintServiceInfo;

    .line 306
    .local v2, "other":Landroid/printservice/PrintServiceInfo;
    iget-object v3, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 307
    iget-object v3, v2, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 308
    return v1

    .line 310
    :cond_3
    iget-object v3, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    iget-object v4, v2, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 311
    return v1

    .line 313
    :cond_4
    return v0
.end method

.method public getAddPrintersActivityName()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mAddPrintersActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getAdvancedOptionsActivityName()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mAdvancedPrintOptionsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 3

    .line 110
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 223
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getSettingsActivityName()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 291
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isEnabled()Z
    .locals 1

    .line 201
    iget-boolean v0, p0, Landroid/printservice/PrintServiceInfo;->mIsEnabled:Z

    return v0
.end method

.method public setIsEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .line 212
    iput-boolean p1, p0, Landroid/printservice/PrintServiceInfo;->mIsEnabled:Z

    .line 213
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "PrintServiceInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const-string v1, "isEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/printservice/PrintServiceInfo;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 322
    const-string v1, ", resolveInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 323
    const-string v1, ", settingsActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/printservice/PrintServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string v1, ", addPrintersActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/printservice/PrintServiceInfo;->mAddPrintersActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string v1, ", advancedPrintOptionsActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/printservice/PrintServiceInfo;->mAdvancedPrintOptionsActivityName:Ljava/lang/String;

    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flagz"    # I

    .line 281
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-boolean v0, p0, Landroid/printservice/PrintServiceInfo;->mIsEnabled:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 283
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 284
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mAddPrintersActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Landroid/printservice/PrintServiceInfo;->mAdvancedPrintOptionsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    return-void
.end method
