.class public final enum Lcom/google/android/util/AbstractMessageParser$Token$Type;
.super Ljava/lang/Enum;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser$Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/util/AbstractMessageParser$Token$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum ACRONYM:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum FLICKR:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum FORMAT:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum GOOGLE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum HTML:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum LINK:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum MUSIC:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum PHOTO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum SMILEY:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum YOUTUBE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;


# instance fields
.field private stringRep:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 657
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "HTML"

    const-string v2, "html"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->HTML:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    .line 658
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "FORMAT"

    const-string v2, "format"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FORMAT:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    .line 659
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "LINK"

    const-string v2, "l"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->LINK:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    .line 660
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "SMILEY"

    const-string v2, "e"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->SMILEY:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    .line 661
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "ACRONYM"

    const-string v2, "a"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ACRONYM:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    .line 662
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "MUSIC"

    const-string v2, "m"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->MUSIC:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    .line 663
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "GOOGLE_VIDEO"

    const-string v2, "v"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->GOOGLE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    .line 664
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "YOUTUBE_VIDEO"

    const-string v2, "yt"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->YOUTUBE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    .line 665
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "PHOTO"

    const-string v2, "p"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->PHOTO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    .line 666
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "FLICKR"

    const-string v2, "f"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FLICKR:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    .line 655
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/android/util/AbstractMessageParser$Token$Type;

    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->HTML:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FORMAT:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->LINK:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->SMILEY:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ACRONYM:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->MUSIC:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->GOOGLE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->YOUTUBE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->PHOTO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FLICKR:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    aput-object v1, v0, v12

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->$VALUES:[Lcom/google/android/util/AbstractMessageParser$Token$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "stringRep"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 673
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 674
    iput-object p3, p0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->stringRep:Ljava/lang/String;

    .line 675
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Token$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 655
    const-class v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/android/util/AbstractMessageParser$Token$Type;
    .locals 1

    .line 655
    sget-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->$VALUES:[Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-virtual {v0}, [Lcom/google/android/util/AbstractMessageParser$Token$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/util/AbstractMessageParser$Token$Type;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->stringRep:Ljava/lang/String;

    return-object v0
.end method
