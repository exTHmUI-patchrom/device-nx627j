.class public final Landroid/view/textclassifier/TextClassificationSessionId;
.super Ljava/lang/Object;
.source "TextClassificationSessionId.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextClassificationSessionId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 118
    new-instance v0, Landroid/view/textclassifier/TextClassificationSessionId$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassificationSessionId$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassificationSessionId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/textclassifier/TextClassificationSessionId;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationSessionId;->mValue:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static unflattenFromString(Ljava/lang/String;)Landroid/view/textclassifier/TextClassificationSessionId;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 115
    new-instance v0, Landroid/view/textclassifier/TextClassificationSessionId;

    invoke-direct {v0, p0}, Landroid/view/textclassifier/TextClassificationSessionId;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 64
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 65
    return v0

    .line 67
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 68
    return v1

    .line 70
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 71
    return v1

    .line 73
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/view/textclassifier/TextClassificationSessionId;

    .line 74
    .local v2, "other":Landroid/view/textclassifier/TextClassificationSessionId;
    iget-object v3, p0, Landroid/view/textclassifier/TextClassificationSessionId;->mValue:Ljava/lang/String;

    iget-object v4, v2, Landroid/view/textclassifier/TextClassificationSessionId;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 75
    return v1

    .line 77
    :cond_3
    return v0
.end method

.method public flattenToString()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSessionId;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 56
    const/16 v0, 0x1f

    .line 57
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 58
    .local v1, "result":I
    const/16 v2, 0x1f

    mul-int/2addr v2, v1

    iget-object v3, p0, Landroid/view/textclassifier/TextClassificationSessionId;->mValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 59
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 82
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "TextClassificationSessionId {%s}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/view/textclassifier/TextClassificationSessionId;->mValue:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 87
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationSessionId;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    return-void
.end method
