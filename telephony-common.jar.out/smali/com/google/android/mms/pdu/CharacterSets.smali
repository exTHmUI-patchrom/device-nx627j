.class public Lcom/google/android/mms/pdu/CharacterSets;
.super Ljava/lang/Object;
.source "CharacterSets.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ANY_CHARSET:I = 0x0

.field public static final BIG5:I = 0x7ea

.field public static final DEFAULT_CHARSET:I = 0x6a

.field public static final DEFAULT_CHARSET_NAME:Ljava/lang/String; = "utf-8"

.field public static final ISO_8859_1:I = 0x4

.field public static final ISO_8859_2:I = 0x5

.field public static final ISO_8859_3:I = 0x6

.field public static final ISO_8859_4:I = 0x7

.field public static final ISO_8859_5:I = 0x8

.field public static final ISO_8859_6:I = 0x9

.field public static final ISO_8859_7:I = 0xa

.field public static final ISO_8859_8:I = 0xb

.field public static final ISO_8859_9:I = 0xc

.field private static final MIBENUM_NUMBERS:[I

.field private static final MIBENUM_TO_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MIMENAME_ANY_CHARSET:Ljava/lang/String; = "*"

.field public static final MIMENAME_BIG5:Ljava/lang/String; = "big5"

.field public static final MIMENAME_ISO_8859_1:Ljava/lang/String; = "iso-8859-1"

.field public static final MIMENAME_ISO_8859_2:Ljava/lang/String; = "iso-8859-2"

.field public static final MIMENAME_ISO_8859_3:Ljava/lang/String; = "iso-8859-3"

.field public static final MIMENAME_ISO_8859_4:Ljava/lang/String; = "iso-8859-4"

.field public static final MIMENAME_ISO_8859_5:Ljava/lang/String; = "iso-8859-5"

.field public static final MIMENAME_ISO_8859_6:Ljava/lang/String; = "iso-8859-6"

.field public static final MIMENAME_ISO_8859_7:Ljava/lang/String; = "iso-8859-7"

.field public static final MIMENAME_ISO_8859_8:Ljava/lang/String; = "iso-8859-8"

.field public static final MIMENAME_ISO_8859_9:Ljava/lang/String; = "iso-8859-9"

.field public static final MIMENAME_SHIFT_JIS:Ljava/lang/String; = "shift_JIS"

.field public static final MIMENAME_UCS2:Ljava/lang/String; = "iso-10646-ucs-2"

.field public static final MIMENAME_US_ASCII:Ljava/lang/String; = "us-ascii"

.field public static final MIMENAME_UTF_16:Ljava/lang/String; = "utf-16"

.field public static final MIMENAME_UTF_8:Ljava/lang/String; = "utf-8"

.field private static final MIME_NAMES:[Ljava/lang/String;

.field private static final NAME_TO_MIBENUM_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHIFT_JIS:I = 0x11

.field public static final UCS2:I = 0x3e8

.field public static final US_ASCII:I = 0x3

.field public static final UTF_16:I = 0x3f7

.field public static final UTF_8:I = 0x6a


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 23
    nop

    .line 56
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_NUMBERS:[I

    .line 100
    const-string v1, "*"

    const-string v2, "us-ascii"

    const-string v3, "iso-8859-1"

    const-string v4, "iso-8859-2"

    const-string v5, "iso-8859-3"

    const-string v6, "iso-8859-4"

    const-string v7, "iso-8859-5"

    const-string v8, "iso-8859-6"

    const-string v9, "iso-8859-7"

    const-string v10, "iso-8859-8"

    const-string v11, "iso-8859-9"

    const-string v12, "shift_JIS"

    const-string v13, "utf-8"

    const-string v14, "big5"

    const-string v15, "iso-10646-ucs-2"

    const-string v16, "utf-16"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/pdu/CharacterSets;->MIME_NAMES:[Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_TO_NAME_MAP:Ljava/util/HashMap;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/CharacterSets;->NAME_TO_MIBENUM_MAP:Ljava/util/HashMap;

    .line 126
    nop

    .line 127
    sget-object v0, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_NUMBERS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 128
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_0

    .line 129
    sget-object v2, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_TO_NAME_MAP:Ljava/util/HashMap;

    sget-object v3, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_NUMBERS:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/google/android/mms/pdu/CharacterSets;->MIME_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v2, Lcom/google/android/mms/pdu/CharacterSets;->NAME_TO_MIBENUM_MAP:Ljava/util/HashMap;

    sget-object v3, Lcom/google/android/mms/pdu/CharacterSets;->MIME_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_NUMBERS:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0x11
        0x6a
        0x7ea
        0x3e8
        0x3f7
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMibEnumValue(Ljava/lang/String;)I
    .locals 2
    .param p0, "mimeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 162
    if-nez p0, :cond_0

    .line 163
    const/4 v0, -0x1

    return v0

    .line 166
    :cond_0
    sget-object v0, Lcom/google/android/mms/pdu/CharacterSets;->NAME_TO_MIBENUM_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 167
    .local v0, "mibEnumValue":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 168
    :cond_1
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw v1
.end method

.method public static getMimeName(I)Ljava/lang/String;
    .locals 2
    .param p0, "mibEnumValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 146
    sget-object v0, Lcom/google/android/mms/pdu/CharacterSets;->MIBENUM_TO_NAME_MAP:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 150
    return-object v0

    .line 148
    :cond_0
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw v1
.end method
