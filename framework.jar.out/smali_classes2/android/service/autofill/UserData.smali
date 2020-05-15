.class public final Landroid/service/autofill/UserData;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/UserData$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/UserData;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_MAX_CATEGORY_COUNT:I = 0xa

.field private static final DEFAULT_MAX_FIELD_CLASSIFICATION_IDS_SIZE:I = 0xa

.field private static final DEFAULT_MAX_USER_DATA_SIZE:I = 0x32

.field private static final DEFAULT_MAX_VALUE_LENGTH:I = 0x64

.field private static final DEFAULT_MIN_VALUE_LENGTH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "UserData"


# instance fields
.field private final mAlgorithm:Ljava/lang/String;

.field private final mAlgorithmArgs:Landroid/os/Bundle;

.field private final mCategoryIds:[Ljava/lang/String;

.field private final mId:Ljava/lang/String;

.field private final mValues:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 340
    new-instance v0, Landroid/service/autofill/UserData$1;

    invoke-direct {v0}, Landroid/service/autofill/UserData$1;-><init>()V

    sput-object v0, Landroid/service/autofill/UserData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/service/autofill/UserData$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/service/autofill/UserData$Builder;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->access$000(Landroid/service/autofill/UserData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/UserData;->mId:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->access$100(Landroid/service/autofill/UserData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/UserData;->mAlgorithm:Ljava/lang/String;

    .line 68
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->access$200(Landroid/service/autofill/UserData$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/UserData;->mAlgorithmArgs:Landroid/os/Bundle;

    .line 69
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->access$300(Landroid/service/autofill/UserData$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    .line 70
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->access$300(Landroid/service/autofill/UserData$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 71
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->access$400(Landroid/service/autofill/UserData$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    .line 72
    invoke-static {p1}, Landroid/service/autofill/UserData$Builder;->access$400(Landroid/service/autofill/UserData$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Landroid/service/autofill/UserData$Builder;Landroid/service/autofill/UserData$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/service/autofill/UserData$Builder;
    .param p2, "x1"    # Landroid/service/autofill/UserData$1;

    .line 49
    invoke-direct {p0, p1}, Landroid/service/autofill/UserData;-><init>(Landroid/service/autofill/UserData$Builder;)V

    return-void
.end method

.method public static dumpConstraints(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 127
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "maxUserDataSize: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/service/autofill/UserData;->getMaxUserDataSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 128
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "maxFieldClassificationIdsSize: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 129
    invoke-static {}, Landroid/service/autofill/UserData;->getMaxFieldClassificationIdsSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 130
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "maxCategoryCount: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/service/autofill/UserData;->getMaxCategoryCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 131
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "minValueLength: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/service/autofill/UserData;->getMinValueLength()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 132
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "maxValueLength: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/service/autofill/UserData;->getMaxValueLength()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 133
    return-void
.end method

.method private static getInt(Ljava/lang/String;I)I
    .locals 5
    .param p0, "settings"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    .line 407
    .local v1, "at":Landroid/app/ActivityThread;
    if-eqz v1, :cond_0

    .line 408
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 411
    :cond_0
    if-nez v0, :cond_1

    .line 412
    const-string v2, "UserData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not read from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; hardcoding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return p1

    .line 415
    :cond_1
    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public static getMaxCategoryCount()I
    .locals 2

    .line 385
    const-string v0, "autofill_user_data_max_category_count"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/service/autofill/UserData;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaxFieldClassificationIdsSize()I
    .locals 2

    .line 376
    const-string v0, "autofill_user_data_max_field_classification_size"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/service/autofill/UserData;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaxUserDataSize()I
    .locals 2

    .line 368
    const-string v0, "autofill_user_data_max_user_data_size"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroid/service/autofill/UserData;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaxValueLength()I
    .locals 2

    .line 401
    const-string v0, "autofill_user_data_max_value_length"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/service/autofill/UserData;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMinValueLength()I
    .locals 2

    .line 393
    const-string v0, "autofill_user_data_min_value_length"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/service/autofill/UserData;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 108
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "id: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/UserData;->mId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Algorithm: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/UserData;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 110
    const-string v0, " Args: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/UserData;->mAlgorithmArgs:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Field ids size: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 114
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 115
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Landroid/view/autofill/Helper;->getRedacted(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Values size: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 119
    nop

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 120
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/view/autofill/Helper;->getRedacted(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 123
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public getAlgorithmArgs()Landroid/os/Bundle;
    .locals 1

    .line 93
    iget-object v0, p0, Landroid/service/autofill/UserData;->mAlgorithmArgs:Landroid/os/Bundle;

    return-object v0
.end method

.method public getCategoryIds()[Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    return-object v0
.end method

.method public getFieldClassificationAlgorithm()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Landroid/service/autofill/UserData;->mAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Landroid/service/autofill/UserData;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getValues()[Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 310
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 312
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserData: [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/autofill/UserData;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", algorithm="

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/autofill/UserData;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 315
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, ", categoryIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    iget-object v1, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/view/autofill/Helper;->appendRedacted(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 317
    const-string v1, ", values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    iget-object v1, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/view/autofill/Helper;->appendRedacted(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 319
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 333
    iget-object v0, p0, Landroid/service/autofill/UserData;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Landroid/service/autofill/UserData;->mCategoryIds:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Landroid/service/autofill/UserData;->mValues:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Landroid/service/autofill/UserData;->mAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Landroid/service/autofill/UserData;->mAlgorithmArgs:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 338
    return-void
.end method
