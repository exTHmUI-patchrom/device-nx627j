.class public final enum Landroid/util/JsonToken;
.super Ljava/lang/Enum;
.source "JsonToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/util/JsonToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/util/JsonToken;

.field public static final enum BEGIN_ARRAY:Landroid/util/JsonToken;

.field public static final enum BEGIN_OBJECT:Landroid/util/JsonToken;

.field public static final enum BOOLEAN:Landroid/util/JsonToken;

.field public static final enum END_ARRAY:Landroid/util/JsonToken;

.field public static final enum END_DOCUMENT:Landroid/util/JsonToken;

.field public static final enum END_OBJECT:Landroid/util/JsonToken;

.field public static final enum NAME:Landroid/util/JsonToken;

.field public static final enum NULL:Landroid/util/JsonToken;

.field public static final enum NUMBER:Landroid/util/JsonToken;

.field public static final enum STRING:Landroid/util/JsonToken;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 28
    new-instance v0, Landroid/util/JsonToken;

    const-string v1, "BEGIN_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    .line 34
    new-instance v0, Landroid/util/JsonToken;

    const-string v1, "END_ARRAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    .line 40
    new-instance v0, Landroid/util/JsonToken;

    const-string v1, "BEGIN_OBJECT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    .line 46
    new-instance v0, Landroid/util/JsonToken;

    const-string v1, "END_OBJECT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    .line 53
    new-instance v0, Landroid/util/JsonToken;

    const-string v1, "NAME"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->NAME:Landroid/util/JsonToken;

    .line 58
    new-instance v0, Landroid/util/JsonToken;

    const-string v1, "STRING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    .line 64
    new-instance v0, Landroid/util/JsonToken;

    const-string v1, "NUMBER"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    .line 69
    new-instance v0, Landroid/util/JsonToken;

    const-string v1, "BOOLEAN"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    .line 74
    new-instance v0, Landroid/util/JsonToken;

    const-string v1, "NULL"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    .line 81
    new-instance v0, Landroid/util/JsonToken;

    const-string v1, "END_DOCUMENT"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Landroid/util/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    .line 22
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    aput-object v1, v0, v2

    sget-object v1, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    aput-object v1, v0, v3

    sget-object v1, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    aput-object v1, v0, v4

    sget-object v1, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    aput-object v1, v0, v5

    sget-object v1, Landroid/util/JsonToken;->NAME:Landroid/util/JsonToken;

    aput-object v1, v0, v6

    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    aput-object v1, v0, v7

    sget-object v1, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    aput-object v1, v0, v8

    sget-object v1, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    aput-object v1, v0, v9

    sget-object v1, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    aput-object v1, v0, v10

    sget-object v1, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    aput-object v1, v0, v11

    sput-object v0, Landroid/util/JsonToken;->$VALUES:[Landroid/util/JsonToken;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/util/JsonToken;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Landroid/util/JsonToken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/util/JsonToken;

    return-object v0
.end method

.method public static values()[Landroid/util/JsonToken;
    .locals 1

    .line 22
    sget-object v0, Landroid/util/JsonToken;->$VALUES:[Landroid/util/JsonToken;

    invoke-virtual {v0}, [Landroid/util/JsonToken;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/JsonToken;

    return-object v0
.end method
