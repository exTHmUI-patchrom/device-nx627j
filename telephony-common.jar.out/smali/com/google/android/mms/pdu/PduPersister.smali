.class public Lcom/google/android/mms/pdu/PduPersister;
.super Ljava/lang/Object;
.source "PduPersister.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ADDRESS_FIELDS:[I

.field private static final CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DUMMY_THREAD_ID:J = 0x7fffffffffffffffL

.field private static final ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCAL_LOGV:Z = false

.field private static final LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MESSAGE_BOX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PART_COLUMN_CHARSET:I = 0x1

.field private static final PART_COLUMN_CONTENT_DISPOSITION:I = 0x2

.field private static final PART_COLUMN_CONTENT_ID:I = 0x3

.field private static final PART_COLUMN_CONTENT_LOCATION:I = 0x4

.field private static final PART_COLUMN_CONTENT_TYPE:I = 0x5

.field private static final PART_COLUMN_FILENAME:I = 0x6

.field private static final PART_COLUMN_ID:I = 0x0

.field private static final PART_COLUMN_NAME:I = 0x7

.field private static final PART_COLUMN_TEXT:I = 0x8

.field private static final PART_PROJECTION:[Ljava/lang/String;

.field private static final PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

.field private static final PDU_COLUMN_CONTENT_CLASS:I = 0xb

.field private static final PDU_COLUMN_CONTENT_LOCATION:I = 0x5

.field private static final PDU_COLUMN_CONTENT_TYPE:I = 0x6

.field private static final PDU_COLUMN_DATE:I = 0x15

.field private static final PDU_COLUMN_DELIVERY_REPORT:I = 0xc

.field private static final PDU_COLUMN_DELIVERY_TIME:I = 0x16

.field private static final PDU_COLUMN_EXPIRY:I = 0x17

.field private static final PDU_COLUMN_ID:I = 0x0

.field private static final PDU_COLUMN_MESSAGE_BOX:I = 0x1

.field private static final PDU_COLUMN_MESSAGE_CLASS:I = 0x7

.field private static final PDU_COLUMN_MESSAGE_ID:I = 0x8

.field private static final PDU_COLUMN_MESSAGE_SIZE:I = 0x18

.field private static final PDU_COLUMN_MESSAGE_TYPE:I = 0xd

.field private static final PDU_COLUMN_MMS_VERSION:I = 0xe

.field private static final PDU_COLUMN_PRIORITY:I = 0xf

.field private static final PDU_COLUMN_READ_REPORT:I = 0x10

.field private static final PDU_COLUMN_READ_STATUS:I = 0x11

.field private static final PDU_COLUMN_REPORT_ALLOWED:I = 0x12

.field private static final PDU_COLUMN_RESPONSE_TEXT:I = 0x9

.field private static final PDU_COLUMN_RETRIEVE_STATUS:I = 0x13

.field private static final PDU_COLUMN_RETRIEVE_TEXT:I = 0x3

.field private static final PDU_COLUMN_RETRIEVE_TEXT_CHARSET:I = 0x1a

.field private static final PDU_COLUMN_STATUS:I = 0x14

.field private static final PDU_COLUMN_SUBJECT:I = 0x4

.field private static final PDU_COLUMN_SUBJECT_CHARSET:I = 0x19

.field private static final PDU_COLUMN_THREAD_ID:I = 0x2

.field private static final PDU_COLUMN_TRANSACTION_ID:I = 0xa

.field private static final PDU_PROJECTION:[Ljava/lang/String;

.field public static final PROC_STATUS_COMPLETED:I = 0x3

.field public static final PROC_STATUS_PERMANENTLY_FAILURE:I = 0x2

.field public static final PROC_STATUS_TRANSIENT_FAILURE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PduPersister"

.field public static final TEMPORARY_DRM_OBJECT_URI:Ljava/lang/String; = "content://mms/9223372036854775807/part"

.field private static final TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPersister:Lcom/google/android/mms/pdu/PduPersister;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 69
    nop

    .line 97
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    .line 104
    const-string v2, "_id"

    const-string v3, "msg_box"

    const-string v4, "thread_id"

    const-string v5, "retr_txt"

    const-string v6, "sub"

    const-string v7, "ct_l"

    const-string v8, "ct_t"

    const-string v9, "m_cls"

    const-string v10, "m_id"

    const-string v11, "resp_txt"

    const-string v12, "tr_id"

    const-string v13, "ct_cls"

    const-string v14, "d_rpt"

    const-string v15, "m_type"

    const-string v16, "v"

    const-string v17, "pri"

    const-string v18, "rr"

    const-string v19, "read_status"

    const-string v20, "rpt_a"

    const-string v21, "retr_st"

    const-string v22, "st"

    const-string v23, "date"

    const-string v24, "d_tm"

    const-string v25, "exp"

    const-string v26, "m_size"

    const-string v27, "sub_cs"

    const-string v28, "retr_txt_cs"

    filled-new-array/range {v2 .. v28}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/mms/pdu/PduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    .line 162
    const-string v2, "_id"

    const-string v3, "chset"

    const-string v4, "cd"

    const-string v5, "cid"

    const-string v6, "cl"

    const-string v7, "ct"

    const-string v8, "fn"

    const-string v9, "name"

    const-string v10, "text"

    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/mms/pdu/PduPersister;->PART_PROJECTION:[Ljava/lang/String;

    .line 198
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    .line 199
    sget-object v1, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v1, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v2, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v1, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v1, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 205
    sget-object v1, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v2, 0x96

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x19

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v1, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v4, 0x9a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x1a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 209
    sget-object v1, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "sub_cs"

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v1, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "retr_txt_cs"

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 214
    sget-object v1, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v1, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 218
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "retr_txt"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 223
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v2, 0x84

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v3, 0x8a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v4, 0x8b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v5, 0x93

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v6, 0x98

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 231
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v7, "ct_l"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_t"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_cls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "resp_txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tr_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 240
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v2, 0x86

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v3, 0x8c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v4, 0x8d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xe

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v5, 0x8f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v6, 0x90

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v6, 0x9b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v6, 0x91

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v6, 0x99

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v6, 0x95

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x14

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 252
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, "ct_cls"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_rpt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "read_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rpt_a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 265
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 271
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_tm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "exp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    invoke-static {}, Lcom/google/android/mms/util/PduCache;->getInstance()Lcom/google/android/mms/util/PduCache;

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    .line 277
    return-void

    nop

    :array_0
    .array-data 4
        0x81
        0x82
        0x89
        0x97
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    .line 286
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 287
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 288
    const-string v0, "phone"

    .line 289
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 290
    return-void
.end method

.method public static convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 942
    const/4 v0, 0x0

    .line 943
    .local v0, "path":Ljava/lang/String;
    if-eqz p1, :cond_7

    .line 944
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 945
    .local v1, "scheme":Ljava/lang/String;
    if-eqz v1, :cond_6

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "file"

    .line 946
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 949
    :cond_0
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 950
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 952
    :cond_1
    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 953
    const-string v2, "_data"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    .line 954
    .local v5, "projection":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 956
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    .line 958
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 962
    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 963
    .local v3, "pathIndex":I
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    .line 968
    .end local v3    # "pathIndex":I
    if-eqz v2, :cond_2

    .line 969
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 972
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v5    # "projection":[Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 959
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v5    # "projection":[Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Given Uri could not be found in media store"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 968
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 964
    :catch_0
    move-exception v3

    .line 965
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "Given Uri is not formatted in a way so that it can be found in media store."

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 968
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    if-eqz v2, :cond_4

    .line 969
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3

    .line 973
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v5    # "projection":[Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Given Uri scheme is not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 947
    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 976
    .end local v1    # "scheme":Ljava/lang/String;
    :cond_7
    :goto_2
    return-object v0
.end method

.method private getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    .line 358
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 361
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .line 1575
    :try_start_0
    const-string v0, "iso-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1576
    :catch_0
    move-exception v0

    .line 1578
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "PduPersister"

    const-string v2, "ISO_8859_1 must be supported!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1579
    const/4 v1, 0x0

    new-array v1, v1, [B

    return-object v1
.end method

.method private getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    .line 351
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 354
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getPartContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;
    .locals 1
    .param p0, "part"    # Lcom/google/android/mms/pdu/PduPart;

    .line 705
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 295
    if-eqz p0, :cond_0

    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 300
    :cond_0
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    if-nez v0, :cond_1

    .line 301
    new-instance v0, Lcom/google/android/mms/pdu/PduPersister;

    invoke-direct {v0, p0}, Lcom/google/android/mms/pdu/PduPersister;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    goto :goto_0

    .line 302
    :cond_1
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 303
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduPersister;->release()V

    .line 304
    new-instance v0, Lcom/google/android/mms/pdu/PduPersister;

    invoke-direct {v0, p0}, Lcom/google/android/mms/pdu/PduPersister;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    .line 307
    :cond_2
    :goto_0
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    return-object v0
.end method

.method private loadAddress(JLcom/google/android/mms/pdu/PduHeaders;)V
    .locals 7
    .param p1, "msgId"    # J
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    .line 490
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "/addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 491
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "address"

    const-string v4, "charset"

    const-string v5, "type"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    .line 490
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 495
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_4

    .line 497
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 498
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, "addr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 500
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 501
    .local v2, "addrType":I
    const/16 v3, 0x89

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const/16 v3, 0x97

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    .line 515
    const-string v3, "PduPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown address type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "addr":Ljava/lang/String;
    .end local v2    # "addrType":I
    goto :goto_1

    .line 510
    .restart local v1    # "addr":Ljava/lang/String;
    .restart local v2    # "addrType":I
    :cond_0
    :pswitch_0
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 511
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 510
    invoke-virtual {p3, v3, v2}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 513
    goto :goto_1

    .line 503
    :cond_1
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 504
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 503
    invoke-virtual {p3, v3, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    nop

    .line 519
    .end local v1    # "addr":Ljava/lang/String;
    .end local v2    # "addrType":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 521
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 522
    goto :goto_2

    .line 521
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 524
    :cond_4
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private loadParts(J)[Lcom/google/android/mms/pdu/PduPart;
    .locals 31
    .param p1, "msgId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 365
    iget-object v2, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mms/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, p1

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "/part"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PART_PROJECTION:[Ljava/lang/String;

    .line 365
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 369
    .local v2, "c":Landroid/database/Cursor;
    const/4 v0, 0x0

    move-object v3, v0

    .line 372
    .local v3, "parts":[Lcom/google/android/mms/pdu/PduPart;
    if-eqz v2, :cond_12

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_c

    .line 379
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    move v4, v0

    .line 380
    .local v4, "partCount":I
    const/4 v0, 0x0

    .line 381
    .local v0, "partIdx":I
    new-array v5, v4, [Lcom/google/android/mms/pdu/PduPart;

    move-object v3, v5

    .line 382
    move v5, v0

    .end local v0    # "partIdx":I
    .local v5, "partIdx":I
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 383
    new-instance v0, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    move-object v6, v0

    .line 384
    .local v6, "part":Lcom/google/android/mms/pdu/PduPart;
    const/4 v0, 0x1

    invoke-direct {v1, v2, v0}, Lcom/google/android/mms/pdu/PduPersister;->getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v0

    move-object v7, v0

    .line 386
    .local v7, "charset":Ljava/lang/Integer;
    if-eqz v7, :cond_1

    .line 387
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 390
    :cond_1
    const/4 v0, 0x2

    invoke-direct {v1, v2, v0}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v0

    move-object v8, v0

    .line 392
    .local v8, "contentDisposition":[B
    if-eqz v8, :cond_2

    .line 393
    invoke-virtual {v6, v8}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 396
    :cond_2
    const/4 v0, 0x3

    invoke-direct {v1, v2, v0}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v0

    move-object v11, v0

    .line 398
    .local v11, "contentId":[B
    if-eqz v11, :cond_3

    .line 399
    invoke-virtual {v6, v11}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 402
    :cond_3
    const/4 v0, 0x4

    invoke-direct {v1, v2, v0}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v0

    move-object v12, v0

    .line 404
    .local v12, "contentLocation":[B
    if-eqz v12, :cond_4

    .line 405
    invoke-virtual {v6, v12}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 408
    :cond_4
    const/4 v0, 0x5

    invoke-direct {v1, v2, v0}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v0

    move-object v13, v0

    .line 410
    .local v13, "contentType":[B
    if-eqz v13, :cond_e

    .line 411
    invoke-virtual {v6, v13}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 416
    const/4 v0, 0x6

    invoke-direct {v1, v2, v0}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v0

    move-object v14, v0

    .line 418
    .local v14, "fileName":[B
    if-eqz v14, :cond_5

    .line 419
    invoke-virtual {v6, v14}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 422
    :cond_5
    const/4 v0, 0x7

    invoke-direct {v1, v2, v0}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v0

    move-object v15, v0

    .line 424
    .local v15, "name":[B
    if-eqz v15, :cond_6

    .line 425
    invoke-virtual {v6, v15}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 429
    :cond_6
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v18, v16

    .line 430
    .local v18, "partId":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v4

    const-string v4, "content://mms/part/"

    .end local v4    # "partCount":I
    .local v20, "partCount":I
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-wide/from16 v7, v18

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .end local v8    # "contentDisposition":[B
    .end local v18    # "partId":J
    .local v7, "partId":J
    .local v21, "charset":Ljava/lang/Integer;
    .local v22, "contentDisposition":[B
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v4, v0

    .line 431
    .local v4, "partURI":Landroid/net/Uri;
    invoke-virtual {v6, v4}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 435
    invoke-static {v13}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v0

    .line 436
    .local v23, "type":Ljava/lang/String;
    move-wide/from16 v24, v7

    move-object/from16 v7, v23

    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v0

    .end local v23    # "type":Ljava/lang/String;
    .local v7, "type":Ljava/lang/String;
    .local v24, "partId":J
    if-nez v0, :cond_d

    .line 437
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 438
    invoke-static {v7}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 439
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v8, v0

    .line 440
    .local v8, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v16, 0x0

    .line 445
    .local v16, "is":Ljava/io/InputStream;
    const-string v0, "text/plain"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "application/smil"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "text/html"

    .line 446
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v0, :cond_7

    .line 447
    move-object/from16 v28, v4

    move-object/from16 v29, v7

    goto/16 :goto_8

    .line 454
    :cond_7
    :try_start_1
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object/from16 v26, v0

    .line 456
    .end local v16    # "is":Ljava/io/InputStream;
    .local v26, "is":Ljava/io/InputStream;
    const/16 v0, 0x100

    :try_start_2
    new-array v0, v0, [B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 457
    .local v0, "buffer":[B
    move-object/from16 v1, v26

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v16
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v26    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    .local v16, "len":I
    :goto_1
    move/from16 v27, v16

    .line 458
    .end local v16    # "len":I
    .local v27, "len":I
    move-object/from16 v28, v4

    move/from16 v4, v27

    if-ltz v4, :cond_8

    .line 459
    .end local v27    # "len":I
    .local v4, "len":I
    .local v28, "partURI":Landroid/net/Uri;
    move-object/from16 v29, v7

    const/4 v7, 0x0

    :try_start_4
    invoke-virtual {v8, v0, v7, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 460
    .end local v7    # "type":Ljava/lang/String;
    .local v29, "type":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v16, v7

    .line 457
    .end local v4    # "len":I
    .restart local v16    # "len":I
    move-object/from16 v4, v28

    move-object/from16 v7, v29

    goto :goto_1

    .line 467
    .end local v0    # "buffer":[B
    .end local v16    # "len":I
    :catchall_0
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    goto/16 :goto_6

    .line 462
    :catch_0
    move-exception v0

    move-object/from16 v16, v1

    goto :goto_5

    .line 467
    .end local v29    # "type":Ljava/lang/String;
    .restart local v7    # "type":Ljava/lang/String;
    :cond_8
    move-object/from16 v29, v7

    .end local v7    # "type":Ljava/lang/String;
    .restart local v29    # "type":Ljava/lang/String;
    if-eqz v1, :cond_9

    .line 469
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 472
    :goto_2
    goto :goto_3

    .line 470
    :catch_1
    move-exception v0

    move-object v4, v0

    .line 471
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    const-string v4, "PduPersister"

    const-string v7, "Failed to close stream"

    invoke-static {v4, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 476
    :cond_9
    :goto_3
    move-object/from16 v16, v1

    goto/16 :goto_a

    .line 467
    .end local v28    # "partURI":Landroid/net/Uri;
    .end local v29    # "type":Ljava/lang/String;
    .local v4, "partURI":Landroid/net/Uri;
    .restart local v7    # "type":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v28, v4

    move-object/from16 v29, v7

    move-object v4, v1

    move-object v1, v0

    goto :goto_4

    .line 462
    :catch_2
    move-exception v0

    move-object/from16 v28, v4

    move-object/from16 v29, v7

    move-object/from16 v16, v1

    goto :goto_5

    .line 467
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v26    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v0

    move-object/from16 v28, v4

    move-object/from16 v29, v7

    move-object/from16 v1, v26

    move-object v4, v1

    move-object v1, v0

    .end local v4    # "partURI":Landroid/net/Uri;
    .end local v7    # "type":Ljava/lang/String;
    .end local v26    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v28    # "partURI":Landroid/net/Uri;
    .restart local v29    # "type":Ljava/lang/String;
    goto :goto_6

    .line 462
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v28    # "partURI":Landroid/net/Uri;
    .end local v29    # "type":Ljava/lang/String;
    .restart local v4    # "partURI":Landroid/net/Uri;
    .restart local v7    # "type":Ljava/lang/String;
    .restart local v26    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v0

    move-object/from16 v28, v4

    move-object/from16 v29, v7

    move-object/from16 v1, v26

    move-object/from16 v16, v1

    .end local v4    # "partURI":Landroid/net/Uri;
    .end local v7    # "type":Ljava/lang/String;
    .end local v26    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v28    # "partURI":Landroid/net/Uri;
    .restart local v29    # "type":Ljava/lang/String;
    goto :goto_5

    .line 467
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v28    # "partURI":Landroid/net/Uri;
    .end local v29    # "type":Ljava/lang/String;
    .restart local v4    # "partURI":Landroid/net/Uri;
    .restart local v7    # "type":Ljava/lang/String;
    .local v16, "is":Ljava/io/InputStream;
    :catchall_3
    move-exception v0

    move-object/from16 v28, v4

    move-object/from16 v29, v7

    move-object v1, v0

    move-object/from16 v4, v16

    .end local v4    # "partURI":Landroid/net/Uri;
    .end local v7    # "type":Ljava/lang/String;
    .end local v16    # "is":Ljava/io/InputStream;
    .restart local v28    # "partURI":Landroid/net/Uri;
    .restart local v29    # "type":Ljava/lang/String;
    :goto_4
    goto :goto_6

    .line 462
    .end local v28    # "partURI":Landroid/net/Uri;
    .end local v29    # "type":Ljava/lang/String;
    .restart local v4    # "partURI":Landroid/net/Uri;
    .restart local v7    # "type":Ljava/lang/String;
    .restart local v16    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v0

    move-object/from16 v28, v4

    move-object/from16 v29, v7

    .line 463
    .end local v4    # "partURI":Landroid/net/Uri;
    .end local v7    # "type":Ljava/lang/String;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v28    # "partURI":Landroid/net/Uri;
    .restart local v29    # "type":Ljava/lang/String;
    :goto_5
    :try_start_7
    const-string v1, "PduPersister"

    const-string v4, "Failed to load part data"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 465
    new-instance v1, Lcom/google/android/mms/MmsException;

    invoke-direct {v1, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 467
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object/from16 v4, v16

    .end local v16    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    :goto_6
    if-eqz v4, :cond_a

    .line 469
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 472
    move-object/from16 v30, v4

    goto :goto_7

    .line 470
    :catch_5
    move-exception v0

    move-object v7, v0

    .line 471
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_9
    const-string v7, "PduPersister"

    move-object/from16 v30, v4

    const-string v4, "Failed to close stream"

    .end local v4    # "is":Ljava/io/InputStream;
    .local v30, "is":Ljava/io/InputStream;
    invoke-static {v7, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 472
    .end local v30    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :cond_a
    move-object/from16 v30, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v30    # "is":Ljava/io/InputStream;
    :goto_7
    throw v1

    .line 447
    .end local v28    # "partURI":Landroid/net/Uri;
    .end local v29    # "type":Ljava/lang/String;
    .end local v30    # "is":Ljava/io/InputStream;
    .local v4, "partURI":Landroid/net/Uri;
    .restart local v7    # "type":Ljava/lang/String;
    .restart local v16    # "is":Ljava/io/InputStream;
    :cond_b
    move-object/from16 v28, v4

    move-object/from16 v29, v7

    .end local v4    # "partURI":Landroid/net/Uri;
    .end local v7    # "type":Ljava/lang/String;
    .restart local v28    # "partURI":Landroid/net/Uri;
    .restart local v29    # "type":Ljava/lang/String;
    :goto_8
    const/16 v0, 0x8

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    if-eqz v0, :cond_c

    move-object v4, v0

    goto :goto_9

    :cond_c
    const-string v4, ""

    :goto_9
    invoke-direct {v1, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v1

    .line 450
    .local v1, "blob":[B
    array-length v4, v1

    const/4 v7, 0x0

    invoke-virtual {v8, v1, v7, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 451
    .end local v0    # "text":Ljava/lang/String;
    .end local v1    # "blob":[B
    nop

    .line 476
    :goto_a
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .end local v8    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v16    # "is":Ljava/io/InputStream;
    goto :goto_b

    .line 478
    .end local v28    # "partURI":Landroid/net/Uri;
    .end local v29    # "type":Ljava/lang/String;
    .restart local v4    # "partURI":Landroid/net/Uri;
    .restart local v7    # "type":Ljava/lang/String;
    :cond_d
    move-object/from16 v28, v4

    move-object/from16 v29, v7

    .end local v4    # "partURI":Landroid/net/Uri;
    .end local v7    # "type":Ljava/lang/String;
    .restart local v28    # "partURI":Landroid/net/Uri;
    .restart local v29    # "type":Ljava/lang/String;
    :goto_b
    add-int/lit8 v0, v5, 0x1

    .local v0, "partIdx":I
    aput-object v6, v3, v5

    .line 479
    .end local v5    # "partIdx":I
    .end local v6    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v11    # "contentId":[B
    .end local v12    # "contentLocation":[B
    .end local v13    # "contentType":[B
    .end local v14    # "fileName":[B
    .end local v15    # "name":[B
    .end local v21    # "charset":Ljava/lang/Integer;
    .end local v22    # "contentDisposition":[B
    .end local v24    # "partId":J
    .end local v28    # "partURI":Landroid/net/Uri;
    .end local v29    # "type":Ljava/lang/String;
    nop

    .line 382
    move v5, v0

    move/from16 v4, v20

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 413
    .end local v0    # "partIdx":I
    .end local v20    # "partCount":I
    .local v4, "partCount":I
    .restart local v5    # "partIdx":I
    .restart local v6    # "part":Lcom/google/android/mms/pdu/PduPart;
    .local v7, "charset":Ljava/lang/Integer;
    .local v8, "contentDisposition":[B
    .restart local v11    # "contentId":[B
    .restart local v12    # "contentLocation":[B
    .restart local v13    # "contentType":[B
    :cond_e
    move/from16 v20, v4

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    .end local v4    # "partCount":I
    .end local v7    # "charset":Ljava/lang/Integer;
    .end local v8    # "contentDisposition":[B
    .restart local v20    # "partCount":I
    .restart local v21    # "charset":Ljava/lang/Integer;
    .restart local v22    # "contentDisposition":[B
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v1, "Content-Type must be set."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 481
    .end local v5    # "partIdx":I
    .end local v6    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v11    # "contentId":[B
    .end local v12    # "contentLocation":[B
    .end local v13    # "contentType":[B
    .end local v20    # "partCount":I
    .end local v21    # "charset":Ljava/lang/Integer;
    .end local v22    # "contentDisposition":[B
    :cond_f
    if-eqz v2, :cond_10

    .line 482
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 486
    :cond_10
    return-object v3

    .line 481
    :catchall_5
    move-exception v0

    if-eqz v2, :cond_11

    .line 482
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v0

    .line 376
    :cond_12
    :goto_c
    nop

    .line 481
    if-eqz v2, :cond_13

    .line 482
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 376
    :cond_13
    return-object v0
.end method

.method private loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V
    .locals 10
    .param p1, "addressType"    # I
    .param p4, "excludeMyNumber"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/google/android/mms/pdu/EncodedStringValue;",
            ">;Z)V"
        }
    .end annotation

    .line 1483
    .local p2, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p3, "addressMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1484
    .local v0, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_0

    .line 1485
    return-void

    .line 1489
    :cond_0
    if-eqz p4, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1490
    return-void

    .line 1492
    :cond_1
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 1493
    .local v1, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1494
    .local v2, "myPhoneNumbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    if-eqz p4, :cond_3

    .line 1496
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v4

    array-length v5, v4

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_3

    aget v7, v4, v6

    .line 1497
    .local v7, "subid":I
    iget-object v8, p0, Lcom/google/android/mms/pdu/PduPersister;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8, v7}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v8

    .line 1498
    .local v8, "myNumber":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 1499
    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1496
    .end local v7    # "subid":I
    .end local v8    # "myNumber":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1504
    :cond_3
    array-length v4, v0

    :goto_1
    if-ge v3, v4, :cond_7

    aget-object v5, v0, v3

    .line 1505
    .local v5, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v5, :cond_6

    .line 1506
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    .line 1507
    .local v6, "number":Ljava/lang/String;
    if-eqz p4, :cond_5

    .line 1508
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1509
    .restart local v8    # "myNumber":Ljava/lang/String;
    invoke-static {v6, v8}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1510
    invoke-virtual {p2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1512
    invoke-virtual {p2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1513
    goto :goto_3

    .line 1515
    .end local v8    # "myNumber":Ljava/lang/String;
    :cond_4
    goto :goto_2

    .line 1516
    :cond_5
    invoke-virtual {p2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1517
    invoke-virtual {p2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1504
    .end local v5    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v6    # "number":Ljava/lang/String;
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1521
    :cond_7
    return-void
.end method

.method private persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 7
    .param p1, "msgId"    # J
    .param p3, "type"    # I
    .param p4, "array"    # [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 691
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 693
    .local v0, "values":Landroid/content/ContentValues;
    array-length v1, p4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p4, v2

    .line 694
    .local v3, "addr":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 695
    const-string v4, "address"

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-string v4, "charset"

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 697
    const-string v4, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 699
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "/addr"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 700
    .local v4, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v6, v4, v0}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 693
    .end local v3    # "addr":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v4    # "uri":Landroid/net/Uri;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 702
    :cond_0
    return-void
.end method

.method private persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 27
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/PduPart;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .local p4, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 791
    move-object/from16 v4, p4

    const/4 v5, 0x0

    .line 792
    .local v5, "os":Ljava/io/OutputStream;
    const/4 v6, 0x0

    .line 793
    .local v6, "is":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 794
    .local v7, "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    const/4 v8, 0x0

    .line 795
    .local v8, "dataUri":Landroid/net/Uri;
    const/4 v0, 0x0

    move-object v9, v0

    .line 798
    .local v9, "path":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v11

    .line 799
    .local v11, "data":[B
    const-string v12, "text/plain"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_19

    const-string v12, "application/smil"

    .line 800
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_19

    const-string v12, "text/html"

    .line 801
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 802
    move-object/from16 v26, v5

    move-object/from16 v18, v8

    goto/16 :goto_c

    .line 811
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/google/android/mms/util/DownloadDrmHelper;->isDrmConvertNeeded(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v12, v0

    .line 812
    .local v12, "isDrm":Z
    if-eqz v12, :cond_7

    .line 813
    if-eqz v2, :cond_5

    .line 815
    :try_start_1
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/google/android/mms/pdu/PduPersister;->convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 819
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    .line 820
    .local v13, "f":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 824
    .local v14, "len":J
    const-wide/16 v16, 0x0

    cmp-long v0, v14, v16

    if-lez v0, :cond_4

    .line 904
    if-eqz v5, :cond_1

    .line 906
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 909
    nop

    .line 911
    move-object/from16 v18, v8

    move-object/from16 v19, v13

    goto :goto_0

    .line 907
    :catch_0
    move-exception v0

    move-object/from16 v16, v0

    .line 908
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "PduPersister"

    move-object/from16 v18, v8

    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8    # "dataUri":Landroid/net/Uri;
    .local v18, "dataUri":Landroid/net/Uri;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v13

    const-string v13, "IOException while closing: "

    .end local v13    # "f":Ljava/io/File;
    .local v19, "f":Ljava/io/File;
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 911
    .end local v18    # "dataUri":Landroid/net/Uri;
    .end local v19    # "f":Ljava/io/File;
    .restart local v8    # "dataUri":Landroid/net/Uri;
    .restart local v13    # "f":Ljava/io/File;
    :cond_1
    move-object/from16 v18, v8

    move-object/from16 v19, v13

    .end local v8    # "dataUri":Landroid/net/Uri;
    .end local v13    # "f":Ljava/io/File;
    .restart local v18    # "dataUri":Landroid/net/Uri;
    .restart local v19    # "f":Ljava/io/File;
    :goto_0
    if-eqz v6, :cond_2

    .line 913
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 916
    goto :goto_1

    .line 914
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 915
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "PduPersister"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException while closing: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 918
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    .line 919
    invoke-virtual {v7, v9}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)I

    .line 923
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 924
    .local v0, "f":Ljava/io/File;
    new-instance v8, Landroid/content/ContentValues;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Landroid/content/ContentValues;-><init>(I)V

    move-object/from16 v23, v8

    .line 925
    .local v23, "values":Landroid/content/ContentValues;
    iget-object v8, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v5

    const-string v5, "content://mms/resetFilePerm/"

    .end local v5    # "os":Ljava/io/OutputStream;
    .local v26, "os":Ljava/io/OutputStream;
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 925
    move-object/from16 v20, v8

    move-object/from16 v21, v10

    invoke-static/range {v20 .. v25}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .end local v0    # "f":Ljava/io/File;
    .end local v23    # "values":Landroid/content/ContentValues;
    goto :goto_2

    .line 827
    .end local v26    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    :cond_3
    move-object/from16 v26, v5

    .end local v5    # "os":Ljava/io/OutputStream;
    .restart local v26    # "os":Ljava/io/OutputStream;
    :goto_2
    return-void

    .line 831
    .end local v14    # "len":J
    .end local v18    # "dataUri":Landroid/net/Uri;
    .end local v19    # "f":Ljava/io/File;
    .end local v26    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    .restart local v8    # "dataUri":Landroid/net/Uri;
    :cond_4
    move-object/from16 v26, v5

    move-object/from16 v18, v8

    .end local v5    # "os":Ljava/io/OutputStream;
    .end local v8    # "dataUri":Landroid/net/Uri;
    .restart local v18    # "dataUri":Landroid/net/Uri;
    .restart local v26    # "os":Ljava/io/OutputStream;
    goto :goto_3

    .line 829
    .end local v18    # "dataUri":Landroid/net/Uri;
    .end local v26    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    .restart local v8    # "dataUri":Landroid/net/Uri;
    :catch_2
    move-exception v0

    move-object/from16 v26, v5

    move-object/from16 v18, v8

    .line 830
    .end local v5    # "os":Ljava/io/OutputStream;
    .end local v8    # "dataUri":Landroid/net/Uri;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "dataUri":Landroid/net/Uri;
    .restart local v26    # "os":Ljava/io/OutputStream;
    :try_start_4
    const-string v5, "PduPersister"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t get file info for: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 834
    .end local v18    # "dataUri":Landroid/net/Uri;
    .end local v26    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    .restart local v8    # "dataUri":Landroid/net/Uri;
    :cond_5
    move-object/from16 v26, v5

    move-object/from16 v18, v8

    .end local v5    # "os":Ljava/io/OutputStream;
    .end local v8    # "dataUri":Landroid/net/Uri;
    .restart local v18    # "dataUri":Landroid/net/Uri;
    .restart local v26    # "os":Ljava/io/OutputStream;
    :goto_3
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/google/android/mms/util/DrmConvertSession;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/mms/util/DrmConvertSession;

    move-result-object v0

    move-object v7, v0

    .line 835
    if-eqz v7, :cond_6

    goto :goto_4

    .line 836
    :cond_6
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mimetype "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " can not be converted."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 842
    .end local v18    # "dataUri":Landroid/net/Uri;
    .end local v26    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    .restart local v8    # "dataUri":Landroid/net/Uri;
    :cond_7
    move-object/from16 v26, v5

    move-object/from16 v18, v8

    .end local v5    # "os":Ljava/io/OutputStream;
    .end local v8    # "dataUri":Landroid/net/Uri;
    .restart local v18    # "dataUri":Landroid/net/Uri;
    .restart local v26    # "os":Ljava/io/OutputStream;
    :goto_4
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v5, v0

    .line 844
    .end local v26    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    if-nez v5, :cond_b

    .line 904
    if-eqz v5, :cond_8

    .line 906
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 909
    goto :goto_5

    .line 907
    :catch_3
    move-exception v0

    move-object v8, v0

    .line 908
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "PduPersister"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException while closing: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 911
    .end local v0    # "e":Ljava/io/IOException;
    :cond_8
    :goto_5
    if-eqz v6, :cond_9

    .line 913
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 916
    goto :goto_6

    .line 914
    :catch_4
    move-exception v0

    move-object v8, v0

    .line 915
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "PduPersister"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException while closing: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 918
    .end local v0    # "e":Ljava/io/IOException;
    :cond_9
    :goto_6
    if-eqz v7, :cond_a

    .line 919
    invoke-virtual {v7, v9}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)I

    .line 923
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 924
    .local v0, "f":Ljava/io/File;
    new-instance v8, Landroid/content/ContentValues;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Landroid/content/ContentValues;-><init>(I)V

    move-object/from16 v22, v8

    .line 925
    .local v22, "values":Landroid/content/ContentValues;
    iget-object v8, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "content://mms/resetFilePerm/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 925
    move-object/from16 v19, v8

    move-object/from16 v20, v10

    invoke-static/range {v19 .. v24}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 845
    .end local v0    # "f":Ljava/io/File;
    .end local v22    # "values":Landroid/content/ContentValues;
    :cond_a
    return-void

    .line 848
    :cond_b
    if-nez v11, :cond_16

    .line 849
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v0
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v8, v0

    .line 850
    .end local v18    # "dataUri":Landroid/net/Uri;
    .restart local v8    # "dataUri":Landroid/net/Uri;
    if-eqz v8, :cond_12

    :try_start_8
    invoke-virtual {v8, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_8

    .line 856
    :cond_c
    if-eqz v4, :cond_d

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 857
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    move-object v6, v0

    .line 859
    :cond_d
    if-nez v6, :cond_e

    .line 860
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 867
    .end local v6    # "is":Ljava/io/InputStream;
    .local v0, "is":Ljava/io/InputStream;
    move-object v6, v0

    .end local v0    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :cond_e
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 868
    .local v0, "buffer":[B
    const/4 v10, 0x0

    .local v10, "len":I
    :goto_7
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v13

    move v10, v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_11

    .line 869
    if-nez v12, :cond_f

    .line 870
    const/4 v13, 0x0

    invoke-virtual {v5, v0, v13, v10}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_7

    .line 872
    :cond_f
    invoke-virtual {v7, v0, v10}, Lcom/google/android/mms/util/DrmConvertSession;->convert([BI)[B

    move-result-object v13

    .line 873
    .local v13, "convertedData":[B
    if-eqz v13, :cond_10

    .line 874
    array-length v14, v13

    const/4 v15, 0x0

    invoke-virtual {v5, v13, v15, v14}, Ljava/io/OutputStream;->write([BII)V

    .line 878
    .end local v13    # "convertedData":[B
    goto :goto_7

    .line 876
    .restart local v13    # "convertedData":[B
    :cond_10
    new-instance v14, Lcom/google/android/mms/MmsException;

    const-string v15, "Error converting drm data."

    invoke-direct {v14, v15}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 880
    .end local v0    # "buffer":[B
    .end local v10    # "len":I
    .end local v13    # "convertedData":[B
    :cond_11
    goto/16 :goto_b

    .line 851
    :cond_12
    :goto_8
    const-string v0, "PduPersister"

    const-string v10, "Can\'t find data for this part."

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 904
    if-eqz v5, :cond_13

    .line 906
    :try_start_9
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 909
    goto :goto_9

    .line 907
    :catch_5
    move-exception v0

    move-object v10, v0

    .line 908
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "PduPersister"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException while closing: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 911
    .end local v0    # "e":Ljava/io/IOException;
    :cond_13
    :goto_9
    if-eqz v6, :cond_14

    .line 913
    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 916
    goto :goto_a

    .line 914
    :catch_6
    move-exception v0

    move-object v10, v0

    .line 915
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v10, "PduPersister"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException while closing: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 918
    .end local v0    # "e":Ljava/io/IOException;
    :cond_14
    :goto_a
    if-eqz v7, :cond_15

    .line 919
    invoke-virtual {v7, v9}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)I

    .line 923
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 924
    .local v0, "f":Ljava/io/File;
    new-instance v10, Landroid/content/ContentValues;

    const/4 v13, 0x0

    invoke-direct {v10, v13}, Landroid/content/ContentValues;-><init>(I)V

    move-object/from16 v21, v10

    .line 925
    .local v21, "values":Landroid/content/ContentValues;
    iget-object v10, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v13, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "content://mms/resetFilePerm/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 925
    move-object/from16 v18, v10

    move-object/from16 v19, v13

    invoke-static/range {v18 .. v23}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 852
    .end local v0    # "f":Ljava/io/File;
    .end local v21    # "values":Landroid/content/ContentValues;
    :cond_15
    return-void

    .line 904
    .end local v8    # "dataUri":Landroid/net/Uri;
    .end local v11    # "data":[B
    .end local v12    # "isDrm":Z
    .restart local v18    # "dataUri":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    goto/16 :goto_12

    .line 900
    :catch_7
    move-exception v0

    move-object/from16 v8, v18

    goto/16 :goto_10

    .line 897
    :catch_8
    move-exception v0

    move-object/from16 v8, v18

    goto/16 :goto_11

    .line 884
    .restart local v11    # "data":[B
    .restart local v12    # "isDrm":Z
    :cond_16
    if-nez v12, :cond_17

    .line 885
    :try_start_b
    invoke-virtual {v5, v11}, Ljava/io/OutputStream;->write([B)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_d

    .line 887
    :cond_17
    move-object v8, v2

    .line 888
    .end local v18    # "dataUri":Landroid/net/Uri;
    .restart local v8    # "dataUri":Landroid/net/Uri;
    :try_start_c
    array-length v0, v11

    invoke-virtual {v7, v11, v0}, Lcom/google/android/mms/util/DrmConvertSession;->convert([BI)[B

    move-result-object v0

    .line 889
    .local v0, "convertedData":[B
    if-eqz v0, :cond_18

    .line 890
    array-length v10, v0

    const/4 v13, 0x0

    invoke-virtual {v5, v0, v13, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 904
    .end local v0    # "convertedData":[B
    .end local v8    # "dataUri":Landroid/net/Uri;
    .end local v11    # "data":[B
    .end local v12    # "isDrm":Z
    .restart local v18    # "dataUri":Landroid/net/Uri;
    :goto_b
    move-object/from16 v18, v8

    goto :goto_d

    .line 892
    .end local v18    # "dataUri":Landroid/net/Uri;
    .restart local v0    # "convertedData":[B
    .restart local v8    # "dataUri":Landroid/net/Uri;
    .restart local v11    # "data":[B
    .restart local v12    # "isDrm":Z
    :cond_18
    new-instance v10, Lcom/google/android/mms/MmsException;

    const-string v13, "Error converting drm data."

    invoke-direct {v10, v13}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 900
    .end local v0    # "convertedData":[B
    .end local v11    # "data":[B
    .end local v12    # "isDrm":Z
    :catch_9
    move-exception v0

    goto/16 :goto_10

    .line 897
    :catch_a
    move-exception v0

    goto/16 :goto_11

    .line 802
    .restart local v11    # "data":[B
    :cond_19
    move-object/from16 v26, v5

    move-object/from16 v18, v8

    .end local v5    # "os":Ljava/io/OutputStream;
    .end local v8    # "dataUri":Landroid/net/Uri;
    .restart local v18    # "dataUri":Landroid/net/Uri;
    .restart local v26    # "os":Ljava/io/OutputStream;
    :goto_c
    :try_start_d
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 803
    .local v5, "cv":Landroid/content/ContentValues;
    if-nez v11, :cond_1a

    .line 804
    new-instance v8, Ljava/lang/String;

    const-string v10, ""

    invoke-direct {v8, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v10, "utf-8"

    invoke-virtual {v8, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    move-object v11, v8

    .line 806
    :cond_1a
    const-string v8, "text"

    new-instance v10, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v10, v11}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    iget-object v8, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v8, v2, v5, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    const/4 v8, 0x1

    if-ne v0, v8, :cond_1e

    .line 810
    .end local v5    # "cv":Landroid/content/ContentValues;
    nop

    .line 904
    move-object/from16 v5, v26

    .end local v11    # "data":[B
    .end local v26    # "os":Ljava/io/OutputStream;
    .local v5, "os":Ljava/io/OutputStream;
    :goto_d
    if-eqz v5, :cond_1b

    .line 906
    :try_start_e
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 909
    goto :goto_e

    .line 907
    :catch_b
    move-exception v0

    move-object v8, v0

    .line 908
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "PduPersister"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException while closing: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 911
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1b
    :goto_e
    if-eqz v6, :cond_1c

    .line 913
    :try_start_f
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    .line 916
    goto :goto_f

    .line 914
    :catch_c
    move-exception v0

    move-object v8, v0

    .line 915
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "PduPersister"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException while closing: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 918
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1c
    :goto_f
    if-eqz v7, :cond_1d

    .line 919
    invoke-virtual {v7, v9}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)I

    .line 923
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 924
    .local v0, "f":Ljava/io/File;
    new-instance v13, Landroid/content/ContentValues;

    const/4 v8, 0x0

    invoke-direct {v13, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 925
    .local v13, "values":Landroid/content/ContentValues;
    iget-object v10, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "content://mms/resetFilePerm/"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 925
    invoke-static/range {v10 .. v15}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 928
    .end local v0    # "f":Ljava/io/File;
    .end local v13    # "values":Landroid/content/ContentValues;
    nop

    .line 930
    :cond_1d
    return-void

    .line 808
    .local v5, "cv":Landroid/content/ContentValues;
    .restart local v11    # "data":[B
    .restart local v26    # "os":Ljava/io/OutputStream;
    :cond_1e
    :try_start_10
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unable to update "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 904
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v11    # "data":[B
    :catchall_1
    move-exception v0

    move-object v5, v0

    move-object v8, v7

    move-object v7, v6

    move-object/from16 v6, v26

    goto :goto_13

    .line 900
    :catch_d
    move-exception v0

    move-object/from16 v8, v18

    move-object/from16 v5, v26

    goto :goto_10

    .line 897
    :catch_e
    move-exception v0

    move-object/from16 v8, v18

    move-object/from16 v5, v26

    goto :goto_11

    .line 904
    .end local v18    # "dataUri":Landroid/net/Uri;
    .end local v26    # "os":Ljava/io/OutputStream;
    .local v5, "os":Ljava/io/OutputStream;
    .restart local v8    # "dataUri":Landroid/net/Uri;
    :catchall_2
    move-exception v0

    move-object/from16 v26, v5

    move-object/from16 v18, v8

    move-object v5, v0

    move-object v8, v7

    move-object v7, v6

    move-object/from16 v6, v26

    .end local v5    # "os":Ljava/io/OutputStream;
    .end local v8    # "dataUri":Landroid/net/Uri;
    .restart local v18    # "dataUri":Landroid/net/Uri;
    .restart local v26    # "os":Ljava/io/OutputStream;
    goto :goto_13

    .line 900
    .end local v18    # "dataUri":Landroid/net/Uri;
    .end local v26    # "os":Ljava/io/OutputStream;
    .restart local v5    # "os":Ljava/io/OutputStream;
    .restart local v8    # "dataUri":Landroid/net/Uri;
    :catch_f
    move-exception v0

    move-object/from16 v26, v5

    move-object/from16 v18, v8

    .line 901
    .local v0, "e":Ljava/io/IOException;
    :goto_10
    :try_start_11
    const-string v10, "PduPersister"

    const-string v11, "Failed to read/write data."

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 902
    new-instance v10, Lcom/google/android/mms/MmsException;

    invoke-direct {v10, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 897
    .end local v0    # "e":Ljava/io/IOException;
    :catch_10
    move-exception v0

    move-object/from16 v26, v5

    move-object/from16 v18, v8

    .line 898
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_11
    const-string v10, "PduPersister"

    const-string v11, "Failed to open Input/Output stream."

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 899
    new-instance v10, Lcom/google/android/mms/MmsException;

    invoke-direct {v10, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v10
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 904
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_3
    move-exception v0

    move-object/from16 v18, v8

    .end local v5    # "os":Ljava/io/OutputStream;
    .local v6, "os":Ljava/io/OutputStream;
    .local v7, "is":Ljava/io/InputStream;
    .local v8, "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .restart local v18    # "dataUri":Landroid/net/Uri;
    :goto_12
    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v0

    :goto_13
    if-eqz v6, :cond_1f

    .line 906
    :try_start_12
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_11

    .line 909
    goto :goto_14

    .line 907
    :catch_11
    move-exception v0

    move-object v10, v0

    .line 908
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "PduPersister"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException while closing: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 911
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1f
    :goto_14
    if-eqz v7, :cond_20

    .line 913
    :try_start_13
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_12

    .line 916
    goto :goto_15

    .line 914
    :catch_12
    move-exception v0

    move-object v10, v0

    .line 915
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v10, "PduPersister"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException while closing: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 918
    .end local v0    # "e":Ljava/io/IOException;
    :cond_20
    :goto_15
    if-eqz v8, :cond_21

    .line 919
    invoke-virtual {v8, v9}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)I

    .line 923
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 924
    .local v0, "f":Ljava/io/File;
    new-instance v13, Landroid/content/ContentValues;

    const/4 v10, 0x0

    invoke-direct {v13, v10}, Landroid/content/ContentValues;-><init>(I)V

    .line 925
    .restart local v13    # "values":Landroid/content/ContentValues;
    iget-object v10, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "content://mms/resetFilePerm/"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 925
    invoke-static/range {v10 .. v15}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 928
    .end local v0    # "f":Ljava/io/File;
    .end local v13    # "values":Landroid/content/ContentValues;
    :cond_21
    throw v5
.end method

.method private setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p4, "mapColumn"    # I

    .line 313
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 315
    sget-object v1, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 316
    .local v1, "charsetColumnIndex":I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 317
    .local v2, "charset":I
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 318
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 319
    .local v3, "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {p3, v3, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 321
    .end local v1    # "charsetColumnIndex":I
    .end local v2    # "charset":I
    .end local v3    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    return-void
.end method

.method private setLongToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p4, "mapColumn"    # I

    .line 344
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 346
    .local v0, "l":J
    invoke-virtual {p3, v0, v1, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    .line 348
    .end local v0    # "l":J
    :cond_0
    return-void
.end method

.method private setOctetToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p4, "mapColumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .line 335
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 337
    .local v0, "b":I
    invoke-virtual {p3, v0, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 339
    .end local v0    # "b":I
    :cond_0
    return-void
.end method

.method private setTextStringToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p4, "mapColumn"    # I

    .line 326
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 328
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p3, v1, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 330
    :cond_0
    return-void
.end method

.method public static toIsoString([B)Ljava/lang/String;
    .locals 3
    .param p0, "bytes"    # [B

    .line 1562
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "iso-8859-1"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1563
    :catch_0
    move-exception v0

    .line 1565
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "PduPersister"

    const-string v2, "ISO_8859_1 must be supported!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1566
    const-string v1, ""

    return-object v1
.end method

.method private updateAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 5
    .param p1, "msgId"    # J
    .param p3, "type"    # I
    .param p4, "array"    # [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 982
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "/addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 983
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 982
    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 986
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/mms/pdu/PduPersister;->persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 987
    return-void
.end method

.method private updatePart(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;Ljava/util/HashMap;)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/mms/pdu/PduPart;",
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .line 1103
    .local p3, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1105
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v1

    .line 1106
    .local v1, "charset":I
    if-eqz v1, :cond_0

    .line 1107
    const-string v2, "chset"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1110
    :cond_0
    const/4 v2, 0x0

    .line 1111
    .local v2, "contentType":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1112
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v8

    .line 1113
    .end local v2    # "contentType":Ljava/lang/String;
    .local v8, "contentType":Ljava/lang/String;
    const-string v2, "ct"

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1119
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 1120
    .local v2, "fileName":Ljava/lang/String;
    const-string v3, "fn"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1124
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 1125
    .local v2, "name":Ljava/lang/String;
    const-string v3, "name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .line 1129
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1130
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v2

    .line 1131
    const-string v3, "cd"

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1135
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v2

    .line 1136
    const-string v3, "cid"

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1140
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v2

    .line 1141
    const-string v3, "cl"

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    .end local v2    # "value":Ljava/lang/Object;
    .local v9, "value":Ljava/lang/Object;
    :cond_5
    move-object v9, v2

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, v0

    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1149
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v2

    if-nez v2, :cond_6

    .line 1150
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1151
    :cond_6
    invoke-direct {p0, p2, p1, v8, p3}, Lcom/google/android/mms/pdu/PduPersister;->persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1153
    :cond_7
    return-void

    .line 1115
    .end local v8    # "contentType":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/Object;
    .local v2, "contentType":Ljava/lang/String;
    :cond_8
    new-instance v3, Lcom/google/android/mms/MmsException;

    const-string v4, "MIME type of the part must be set."

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getPendingMessages(J)Landroid/database/Cursor;
    .locals 10
    .param p1, "dueTime"    # J

    .line 1595
    sget-object v0, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1596
    .local v0, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v1, "protocol"

    const-string v2, "mms"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1598
    const-string v1, "err_type < ? AND due_time <= ?"

    .line 1601
    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/String;

    .line 1602
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v8, v3

    .line 1603
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v8, v3

    .line 1606
    .local v8, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 1607
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const-string v9, "due_time"

    .line 1606
    const/4 v6, 0x0

    move-object v7, v1

    invoke-static/range {v3 .. v9}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;
    .locals 20
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 534
    move-object/from16 v9, p1

    const/4 v10, 0x0

    .line 535
    .local v10, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    const/4 v2, 0x0

    .line 536
    .local v2, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    const/4 v11, 0x0

    .line 537
    .local v11, "msgBox":I
    const-wide/16 v12, -0x1

    move-wide v14, v12

    .line 539
    .local v14, "threadId":J
    const/4 v8, 0x0

    :try_start_0
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 540
    :try_start_1
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0, v9}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v0, :cond_1

    .line 545
    :try_start_2
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 548
    goto :goto_0

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "PduPersister"

    const-string v5, "load: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 549
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0, v9}, Lcom/google/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/util/PduCacheEntry;

    move-object v2, v0

    .line 550
    if-eqz v2, :cond_1

    .line 551
    invoke-virtual {v2}, Lcom/google/android/mms/util/PduCacheEntry;->getPdu()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 675
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v4

    .line 676
    if-eqz v10, :cond_0

    .line 677
    nop

    .line 679
    :try_start_4
    new-instance v3, Lcom/google/android/mms/util/PduCacheEntry;

    invoke-direct {v3, v10, v11, v14, v15}, Lcom/google/android/mms/util/PduCacheEntry;-><init>(Lcom/google/android/mms/pdu/GenericPdu;IJ)V

    move-object v2, v3

    .line 680
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v3, v9, v2}, Lcom/google/android/mms/util/PduCache;->put(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)Z

    .line 682
    :cond_0
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v3, v9, v8}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 683
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 684
    monitor-exit v4

    .line 551
    return-object v0

    .line 684
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 556
    :cond_1
    move-object/from16 v16, v2

    .end local v2    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .local v16, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :try_start_5
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/4 v7, 0x1

    invoke-virtual {v0, v9, v7}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 557
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 559
    :try_start_6
    iget-object v2, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/16 v17, 0x0

    move-object v4, v9

    move v12, v7

    move-object v7, v0

    move v13, v8

    move-object/from16 v8, v17

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    .line 561
    .local v2, "c":Landroid/database/Cursor;
    new-instance v0, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    move-object v3, v0

    .line 563
    .local v3, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 566
    .local v4, "msgId":J
    if-eqz v2, :cond_b

    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v12, :cond_b

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 570
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move v11, v0

    .line 571
    const/4 v0, 0x2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-wide v14, v6

    .line 573
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 574
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 575
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    nop

    .line 576
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 575
    invoke-direct {v1, v2, v8, v3, v12}, Lcom/google/android/mms/pdu/PduPersister;->setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V

    .line 577
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_1

    .line 579
    :cond_2
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    move-object v0, v6

    .line 580
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 581
    .restart local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    nop

    .line 582
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 581
    invoke-direct {v1, v2, v8, v3, v12}, Lcom/google/android/mms/pdu/PduPersister;->setTextStringToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V

    .line 583
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_2

    .line 585
    :cond_3
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    move-object v0, v6

    .line 586
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 587
    .restart local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    nop

    .line 588
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 587
    invoke-direct {v1, v2, v8, v3, v12}, Lcom/google/android/mms/pdu/PduPersister;->setOctetToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V

    .line 589
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_3

    .line 591
    :cond_4
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    move-object v0, v6

    .line 592
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 593
    .restart local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    nop

    .line 594
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 593
    invoke-direct {v1, v2, v8, v3, v12}, Lcom/google/android/mms/pdu/PduPersister;->setLongToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 595
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_4

    .line 597
    :cond_5
    if-eqz v2, :cond_6

    .line 598
    :try_start_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 603
    :cond_6
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_a

    .line 608
    invoke-direct {v1, v4, v5, v3}, Lcom/google/android/mms/pdu/PduPersister;->loadAddress(JLcom/google/android/mms/pdu/PduHeaders;)V

    .line 610
    const/16 v6, 0x8c

    invoke-virtual {v3, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v6

    .line 611
    .local v6, "msgType":I
    new-instance v7, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v7}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 615
    .local v7, "body":Lcom/google/android/mms/pdu/PduBody;
    const/16 v8, 0x84

    if-eq v6, v8, :cond_8

    const/16 v8, 0x80

    if-ne v6, v8, :cond_7

    goto :goto_5

    .line 626
    :cond_7
    move-object/from16 v19, v0

    goto :goto_7

    .line 617
    :cond_8
    :goto_5
    invoke-direct {v1, v4, v5}, Lcom/google/android/mms/pdu/PduPersister;->loadParts(J)[Lcom/google/android/mms/pdu/PduPart;

    move-result-object v8

    .line 618
    .local v8, "parts":[Lcom/google/android/mms/pdu/PduPart;
    if-eqz v8, :cond_9

    .line 619
    array-length v12, v8

    .line 620
    .local v12, "partsNum":I
    move/from16 v17, v13

    .local v17, "i":I
    :goto_6
    move/from16 v18, v17

    .end local v17    # "i":I
    .local v18, "i":I
    move/from16 v13, v18

    if-ge v13, v12, :cond_9

    .line 621
    .end local v18    # "i":I
    .local v13, "i":I
    move-object/from16 v19, v0

    aget-object v0, v8, v13

    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .local v19, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-virtual {v7, v0}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 620
    add-int/lit8 v17, v13, 0x1

    .end local v13    # "i":I
    .restart local v17    # "i":I
    move-object/from16 v0, v19

    const/4 v13, 0x0

    goto :goto_6

    .line 626
    .end local v8    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .end local v12    # "partsNum":I
    .end local v17    # "i":I
    .end local v19    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .restart local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :cond_9
    move-object/from16 v19, v0

    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .restart local v19    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :goto_7
    packed-switch v6, :pswitch_data_0

    .line 671
    new-instance v0, Lcom/google/android/mms/MmsException;

    goto/16 :goto_a

    .line 634
    :pswitch_0
    new-instance v0, Lcom/google/android/mms/pdu/ReadOrigInd;

    invoke-direct {v0, v3}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 635
    .end local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .local v0, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_8

    .line 649
    .end local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_1
    new-instance v0, Lcom/google/android/mms/pdu/ReadRecInd;

    invoke-direct {v0, v3}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 650
    .end local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_8

    .line 631
    .end local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_2
    new-instance v0, Lcom/google/android/mms/pdu/DeliveryInd;

    invoke-direct {v0, v3}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 632
    .end local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_8

    .line 643
    .end local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_3
    new-instance v0, Lcom/google/android/mms/pdu/AcknowledgeInd;

    invoke-direct {v0, v3}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 644
    .end local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_8

    .line 637
    .end local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_4
    new-instance v0, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-direct {v0, v3, v7}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 638
    .end local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_8

    .line 646
    .end local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_5
    new-instance v0, Lcom/google/android/mms/pdu/NotifyRespInd;

    invoke-direct {v0, v3}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 647
    .end local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_8

    .line 628
    .end local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_6
    new-instance v0, Lcom/google/android/mms/pdu/NotificationInd;

    invoke-direct {v0, v3}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 629
    .end local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_8

    .line 667
    .end local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_7
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unsupported PDU type: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :pswitch_8
    new-instance v0, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v0, v3, v7}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 641
    .end local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    nop

    .line 675
    .end local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v3    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v4    # "msgId":J
    .end local v6    # "msgType":I
    .end local v7    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v19    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .local v2, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :goto_8
    move-object v2, v0

    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v3

    .line 676
    nop

    .line 677
    nop

    .line 679
    :try_start_9
    new-instance v0, Lcom/google/android/mms/util/PduCacheEntry;

    invoke-direct {v0, v2, v11, v14, v15}, Lcom/google/android/mms/util/PduCacheEntry;-><init>(Lcom/google/android/mms/pdu/GenericPdu;IJ)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object v4, v0

    .line 680
    .end local v16    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .local v4, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :try_start_a
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0, v9, v4}, Lcom/google/android/mms/util/PduCache;->put(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)Z

    .line 682
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/4 v5, 0x0

    invoke-virtual {v0, v9, v5}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 683
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 684
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 685
    nop

    .line 686
    return-object v2

    .line 684
    :catchall_1
    move-exception v0

    move-object/from16 v16, v4

    .end local v4    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v16    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :goto_9
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_9

    .line 671
    .local v2, "c":Landroid/database/Cursor;
    .restart local v3    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .local v4, "msgId":J
    .restart local v6    # "msgType":I
    .restart local v7    # "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v19    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :goto_a
    :try_start_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unrecognized PDU type: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    .end local v6    # "msgType":I
    .end local v7    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v19    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :cond_a
    move-object/from16 v19, v0

    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .restart local v19    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v6, "Error! ID of the message: -1."

    invoke-direct {v0, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 597
    .end local v19    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :catchall_3
    move-exception v0

    goto :goto_b

    .line 567
    :cond_b
    :try_start_d
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 597
    :goto_b
    if-eqz v2, :cond_c

    .line 598
    :try_start_e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 675
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v4    # "msgId":J
    :catchall_4
    move-exception v0

    goto :goto_d

    .line 557
    :catchall_5
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_c

    .end local v16    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .local v2, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :catchall_6
    move-exception v0

    :goto_c
    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 675
    :catchall_7
    move-exception v0

    move-object/from16 v16, v2

    .end local v2    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v16    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :goto_d
    sget-object v2, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v2

    .line 676
    if-eqz v10, :cond_d

    .line 677
    nop

    .line 679
    :try_start_11
    new-instance v3, Lcom/google/android/mms/util/PduCacheEntry;

    invoke-direct {v3, v10, v11, v14, v15}, Lcom/google/android/mms/util/PduCacheEntry;-><init>(Lcom/google/android/mms/pdu/GenericPdu;IJ)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 680
    .end local v16    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .local v3, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :try_start_12
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v4, v9, v3}, Lcom/google/android/mms/util/PduCache;->put(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 682
    move-object/from16 v16, v3

    goto :goto_e

    .line 684
    :catchall_8
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_f

    .line 682
    .end local v3    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v16    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :cond_d
    :goto_e
    :try_start_13
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/4 v4, 0x0

    invoke-virtual {v3, v9, v4}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 683
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 684
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    throw v0

    :catchall_9
    move-exception v0

    :goto_f
    :try_start_14
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    throw v0

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 11
    .param p1, "from"    # Landroid/net/Uri;
    .param p2, "to"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .line 1536
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 1537
    .local v0, "msgId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 1542
    sget-object v2, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1543
    .local v2, "msgBox":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 1551
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1552
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "msg_box"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1553
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, p1

    move-object v8, v3

    invoke-static/range {v5 .. v10}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1554
    invoke-static {p2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    return-object v4

    .line 1544
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_0
    new-instance v3, Lcom/google/android/mms/MmsException;

    const-string v4, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1538
    .end local v2    # "msgBox":Ljava/lang/Integer;
    :cond_1
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Error! ID of the message: -1."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;
    .locals 37
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "createThreadId"    # Z
    .param p4, "groupMmsEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/GenericPdu;",
            "Landroid/net/Uri;",
            "ZZ",
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .local p5, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p2

    .line 1254
    if-eqz v9, :cond_21

    .line 1257
    const-wide/16 v3, -0x1

    move-wide v5, v3

    .line 1259
    .local v5, "msgId":J
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v5, v7

    .line 1262
    nop

    .line 1263
    .end local v5    # "msgId":J
    .local v10, "msgId":J
    :goto_0
    move-wide v10, v5

    goto :goto_1

    .line 1260
    .end local v10    # "msgId":J
    .restart local v5    # "msgId":J
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1263
    .end local v5    # "msgId":J
    .restart local v10    # "msgId":J
    :goto_1
    cmp-long v0, v10, v3

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_2
    move v14, v0

    .line 1265
    .local v14, "existingUri":Z
    if-nez v14, :cond_2

    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_3

    .line 1266
    :cond_1
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v3, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    invoke-direct {v0, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1272
    :cond_2
    :goto_3
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v5

    .line 1275
    :try_start_1
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0, v9}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 1280
    :try_start_2
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1283
    goto :goto_4

    .line 1281
    :catch_1
    move-exception v0

    .line 1282
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v6, "PduPersister"

    const-string v7, "persist1: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1285
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    :goto_4
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1286
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0, v9}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    .line 1288
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v0

    .line 1289
    .local v0, "header":Lcom/google/android/mms/pdu/PduHeaders;
    const/4 v5, 0x0

    .line 1290
    .local v5, "body":Lcom/google/android/mms/pdu/PduBody;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    move-object v15, v6

    .line 1293
    .local v15, "values":Landroid/content/ContentValues;
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 1294
    .local v6, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1295
    .local v8, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1296
    .local v12, "field":I
    invoke-virtual {v0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v13

    .line 1297
    .local v13, "encodedString":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v13, :cond_4

    .line 1298
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1299
    .local v3, "charsetColumn":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v19, v5

    invoke-virtual {v13}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v5

    .end local v5    # "body":Lcom/google/android/mms/pdu/PduBody;
    .local v19, "body":Lcom/google/android/mms/pdu/PduBody;
    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .end local v3    # "charsetColumn":Ljava/lang/String;
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v12    # "field":I
    .end local v13    # "encodedString":Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_6

    .line 1302
    .end local v19    # "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local v5    # "body":Lcom/google/android/mms/pdu/PduBody;
    :cond_4
    move-object/from16 v19, v5

    .line 1294
    .end local v5    # "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local v19    # "body":Lcom/google/android/mms/pdu/PduBody;
    :goto_6
    move-object/from16 v5, v19

    const-wide/16 v3, -0x1

    goto :goto_5

    .line 1304
    .end local v19    # "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local v5    # "body":Lcom/google/android/mms/pdu/PduBody;
    :cond_5
    move-object/from16 v19, v5

    .end local v5    # "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local v19    # "body":Lcom/google/android/mms/pdu/PduBody;
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 1305
    .end local v6    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1306
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v6

    .line 1307
    .local v6, "text":[B
    if-eqz v6, :cond_6

    .line 1308
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v6    # "text":[B
    :cond_6
    goto :goto_7

    .line 1312
    :cond_7
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 1313
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1314
    .restart local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v6

    .line 1315
    .local v6, "b":I
    if-eqz v6, :cond_8

    .line 1316
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v15, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1318
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v6    # "b":I
    :cond_8
    goto :goto_8

    .line 1320
    :cond_9
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    .line 1321
    .end local v3    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .local v12, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1322
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v5

    .line 1323
    .local v5, "l":J
    const-wide/16 v7, -0x1

    cmp-long v13, v5, v7

    if-eqz v13, :cond_a

    .line 1324
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v15, v13, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1326
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v5    # "l":J
    :cond_a
    goto :goto_9

    .line 1328
    :cond_b
    new-instance v3, Ljava/util/HashMap;

    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    array-length v4, v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    move-object v13, v3

    .line 1331
    .local v13, "addressMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_a
    const/16 v6, 0x89

    if-ge v5, v4, :cond_e

    aget v7, v3, v5

    .line 1332
    .local v7, "addrType":I
    const/4 v8, 0x0

    .line 1333
    .local v8, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-ne v7, v6, :cond_d

    .line 1334
    invoke-virtual {v0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    .line 1335
    .local v6, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v6, :cond_c

    .line 1336
    move-object/from16 v21, v3

    const/4 v3, 0x1

    new-array v8, v3, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1337
    const/4 v3, 0x0

    aput-object v6, v8, v3

    .end local v6    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_b

    .line 1339
    :cond_c
    move-object/from16 v21, v3

    :goto_b
    goto :goto_c

    .line 1340
    :cond_d
    move-object/from16 v21, v3

    invoke-virtual {v0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v8

    .line 1342
    :goto_c
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    .end local v7    # "addrType":I
    .end local v8    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v21

    goto :goto_a

    .line 1345
    :cond_e
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v8, v3

    .line 1346
    .local v8, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v7

    .line 1351
    .local v7, "msgType":I
    const/16 v3, 0x80

    const/16 v4, 0x84

    const/16 v5, 0x82

    if-eq v7, v5, :cond_f

    if-eq v7, v4, :cond_f

    if-ne v7, v3, :cond_14

    .line 1354
    :cond_f
    const/16 v6, 0x97

    if-eq v7, v3, :cond_11

    if-eq v7, v5, :cond_10

    if-eq v7, v4, :cond_10

    .line 1378
    const/4 v4, 0x0

    goto :goto_d

    .line 1357
    :cond_10
    const/16 v3, 0x89

    const/4 v4, 0x0

    invoke-direct {v1, v3, v8, v13, v4}, Lcom/google/android/mms/pdu/PduPersister;->loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    .line 1365
    if-eqz p4, :cond_12

    .line 1366
    const/4 v3, 0x1

    invoke-direct {v1, v6, v8, v13, v3}, Lcom/google/android/mms/pdu/PduPersister;->loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    .line 1371
    invoke-direct {v1, v5, v8, v13, v3}, Lcom/google/android/mms/pdu/PduPersister;->loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    goto :goto_d

    .line 1375
    :cond_11
    const/4 v4, 0x0

    invoke-direct {v1, v6, v8, v13, v4}, Lcom/google/android/mms/pdu/PduPersister;->loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    .line 1378
    :cond_12
    :goto_d
    const-wide/16 v5, 0x0

    .line 1379
    .local v5, "threadId":J
    if-eqz p3, :cond_13

    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13

    .line 1382
    iget-object v3, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-static {v3, v8}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v5

    .line 1384
    :cond_13
    const-string v3, "thread_id"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1389
    .end local v5    # "threadId":J
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1392
    .local v3, "dummyId":J
    const/4 v5, 0x1

    .line 1395
    .local v5, "textOnly":Z
    const/4 v6, 0x0

    .line 1398
    .local v6, "messageSize":I
    move-object/from16 v22, v0

    instance-of v0, v2, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local v0    # "header":Lcom/google/android/mms/pdu/PduHeaders;
    .local v22, "header":Lcom/google/android/mms/pdu/PduHeaders;
    if-eqz v0, :cond_19

    .line 1399
    move-object v0, v2

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 1401
    .end local v19    # "body":Lcom/google/android/mms/pdu/PduBody;
    .local v0, "body":Lcom/google/android/mms/pdu/PduBody;
    if-eqz v0, :cond_18

    .line 1402
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v2

    .line 1403
    .local v2, "partsNum":I
    move/from16 v23, v5

    const/4 v5, 0x2

    .end local v5    # "textOnly":Z
    .local v23, "textOnly":Z
    if-le v2, v5, :cond_15

    .line 1408
    const/4 v5, 0x0

    .line 1410
    .end local v23    # "textOnly":Z
    .restart local v5    # "textOnly":Z
    move/from16 v23, v5

    .end local v5    # "textOnly":Z
    .restart local v23    # "textOnly":Z
    :cond_15
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_e
    if-ge v5, v2, :cond_17

    .line 1411
    move/from16 v24, v2

    invoke-virtual {v0, v5}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 1412
    .local v2, "part":Lcom/google/android/mms/pdu/PduPart;
    .local v24, "partsNum":I
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getDataLength()I

    move-result v17

    add-int v6, v6, v17

    .line 1413
    move-object/from16 v25, v8

    move-object/from16 v8, p5

    invoke-virtual {v1, v2, v3, v4, v8}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    .line 1417
    .end local v8    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v25, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v26, v0

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPartContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v0

    .line 1418
    .local v0, "contentType":Ljava/lang/String;
    .local v26, "body":Lcom/google/android/mms/pdu/PduBody;
    if-eqz v0, :cond_16

    move-object/from16 v27, v2

    const-string v2, "application/smil"

    .end local v2    # "part":Lcom/google/android/mms/pdu/PduPart;
    .local v27, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "text/plain"

    .line 1419
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 1420
    const/16 v23, 0x0

    .line 1410
    .end local v0    # "contentType":Ljava/lang/String;
    .end local v27    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_16
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v24

    move-object/from16 v8, v25

    move-object/from16 v0, v26

    goto :goto_e

    .line 1427
    .end local v5    # "i":I
    .end local v24    # "partsNum":I
    .end local v25    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v26    # "body":Lcom/google/android/mms/pdu/PduBody;
    .local v0, "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local v8    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_17
    move-object/from16 v26, v0

    move-object/from16 v25, v8

    move-object/from16 v8, p5

    move v0, v6

    .end local v0    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v8    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v25    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v26    # "body":Lcom/google/android/mms/pdu/PduBody;
    goto :goto_f

    .end local v23    # "textOnly":Z
    .end local v25    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v26    # "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local v0    # "body":Lcom/google/android/mms/pdu/PduBody;
    .local v5, "textOnly":Z
    .restart local v8    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_18
    move-object/from16 v26, v0

    move/from16 v23, v5

    move-object/from16 v25, v8

    move-object/from16 v8, p5

    move v0, v6

    .end local v0    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v5    # "textOnly":Z
    .end local v8    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v23    # "textOnly":Z
    .restart local v25    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v26    # "body":Lcom/google/android/mms/pdu/PduBody;
    goto :goto_f

    .end local v23    # "textOnly":Z
    .end local v25    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v26    # "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local v5    # "textOnly":Z
    .restart local v8    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v19    # "body":Lcom/google/android/mms/pdu/PduBody;
    :cond_19
    move/from16 v23, v5

    move-object/from16 v25, v8

    move-object/from16 v8, p5

    move v0, v6

    move-object/from16 v26, v19

    .end local v5    # "textOnly":Z
    .end local v6    # "messageSize":I
    .end local v8    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v19    # "body":Lcom/google/android/mms/pdu/PduBody;
    .local v0, "messageSize":I
    .restart local v23    # "textOnly":Z
    .restart local v25    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v26    # "body":Lcom/google/android/mms/pdu/PduBody;
    :goto_f
    const-string v2, "text_only"

    if-eqz v23, :cond_1a

    const/4 v5, 0x1

    goto :goto_10

    :cond_1a
    const/4 v5, 0x0

    :goto_10
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1430
    const-string v2, "m_size"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1b

    .line 1431
    const-string v2, "m_size"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1434
    :cond_1b
    const/4 v2, 0x0

    .line 1435
    .local v2, "res":Landroid/net/Uri;
    if-eqz v14, :cond_1c

    .line 1436
    move-object v5, v9

    .line 1437
    .end local v2    # "res":Landroid/net/Uri;
    .local v5, "res":Landroid/net/Uri;
    iget-object v2, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-wide/from16 v28, v3

    move-object v3, v2

    .end local v3    # "dummyId":J
    .local v28, "dummyId":J
    const/16 v19, 0x0

    move-object v4, v6

    move-object v6, v15

    move/from16 v20, v7

    move-object/from16 v7, v17

    .end local v7    # "msgType":I
    .local v20, "msgType":I
    move-object/from16 v17, v25

    move-object/from16 v8, v18

    .end local v25    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v17, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static/range {v3 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1448
    move-object v2, v5

    goto :goto_11

    .line 1439
    .end local v5    # "res":Landroid/net/Uri;
    .end local v17    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v20    # "msgType":I
    .end local v28    # "dummyId":J
    .restart local v2    # "res":Landroid/net/Uri;
    .restart local v3    # "dummyId":J
    .restart local v7    # "msgType":I
    .restart local v25    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_1c
    move-wide/from16 v28, v3

    move/from16 v20, v7

    move-object/from16 v17, v25

    const/16 v19, 0x0

    .end local v3    # "dummyId":J
    .end local v7    # "msgType":I
    .end local v25    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v17    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v20    # "msgType":I
    .restart local v28    # "dummyId":J
    iget-object v3, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v4, v9, v15}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 1440
    if-eqz v2, :cond_20

    .line 1445
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 1448
    :goto_11
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1449
    .end local v15    # "values":Landroid/content/ContentValues;
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "mid"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1450
    iget-object v4, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://mms/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, v28

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .end local v28    # "dummyId":J
    .local v7, "dummyId":J
    const-string v15, "/part"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1451
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v32

    const/16 v34, 0x0

    const/16 v35, 0x0

    .line 1450
    move-object/from16 v30, v4

    move-object/from16 v31, v5

    move-object/from16 v33, v3

    invoke-static/range {v30 .. v35}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1458
    if-nez v14, :cond_1d

    .line 1459
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1463
    :cond_1d
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    array-length v5, v4

    move/from16 v6, v19

    :goto_12
    if-ge v6, v5, :cond_1f

    aget v15, v4, v6

    .line 1464
    .local v15, "addrType":I
    move/from16 v36, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0    # "messageSize":I
    .local v36, "messageSize":I
    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1465
    .local v0, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v0, :cond_1e

    .line 1466
    invoke-direct {v1, v10, v11, v15, v0}, Lcom/google/android/mms/pdu/PduPersister;->persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1463
    .end local v0    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v15    # "addrType":I
    :cond_1e
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v36

    goto :goto_12

    .line 1470
    .end local v36    # "messageSize":I
    .local v0, "messageSize":I
    :cond_1f
    move/from16 v36, v0

    .end local v0    # "messageSize":I
    .restart local v36    # "messageSize":I
    return-object v2

    .line 1441
    .end local v3    # "values":Landroid/content/ContentValues;
    .end local v7    # "dummyId":J
    .end local v36    # "messageSize":I
    .restart local v0    # "messageSize":I
    .local v15, "values":Landroid/content/ContentValues;
    .restart local v28    # "dummyId":J
    :cond_20
    move/from16 v36, v0

    move-wide/from16 v7, v28

    .end local v0    # "messageSize":I
    .end local v28    # "dummyId":J
    .restart local v7    # "dummyId":J
    .restart local v36    # "messageSize":I
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v3, "persist() failed: return null."

    invoke-direct {v0, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1285
    .end local v2    # "res":Landroid/net/Uri;
    .end local v7    # "dummyId":J
    .end local v12    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .end local v13    # "addressMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    .end local v15    # "values":Landroid/content/ContentValues;
    .end local v17    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v20    # "msgType":I
    .end local v22    # "header":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v23    # "textOnly":Z
    .end local v26    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v36    # "messageSize":I
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 1255
    .end local v10    # "msgId":J
    .end local v14    # "existingUri":Z
    :cond_21
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v2, "Uri may not be null."

    invoke-direct {v0, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;
    .locals 8
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p2, "msgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/PduPart;",
            "J",
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .line 710
    .local p4, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://mms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/part"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 711
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 713
    .local v1, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v2

    .line 714
    .local v2, "charset":I
    if-eqz v2, :cond_0

    .line 715
    const-string v3, "chset"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 718
    :cond_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPartContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v3

    .line 719
    .local v3, "contentType":Ljava/lang/String;
    if-eqz v3, :cond_9

    .line 722
    const-string v4, "image/jpg"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 723
    const-string v3, "image/jpeg"

    .line 726
    :cond_1
    const-string v4, "ct"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string v4, "application/smil"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 729
    const-string v4, "seq"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 735
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v4

    if-eqz v4, :cond_3

    .line 736
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 737
    .local v4, "fileName":Ljava/lang/String;
    const-string v5, "fn"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    .end local v4    # "fileName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v4

    if-eqz v4, :cond_4

    .line 741
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 742
    .local v4, "name":Ljava/lang/String;
    const-string v5, "name"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    .line 746
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v5

    if-eqz v5, :cond_5

    .line 747
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v4

    .line 748
    const-string v5, "cd"

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v5

    if-eqz v5, :cond_6

    .line 752
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v4

    .line 753
    const-string v5, "cid"

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v5

    if-eqz v5, :cond_7

    .line 757
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v4

    .line 758
    const-string v5, "cl"

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    :cond_7
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v6, v0, v1}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 762
    .local v5, "res":Landroid/net/Uri;
    if-eqz v5, :cond_8

    .line 766
    invoke-direct {p0, p1, v5, v3, p4}, Lcom/google/android/mms/pdu/PduPersister;->persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 769
    invoke-virtual {p1, v5}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 771
    return-object v5

    .line 763
    :cond_8
    new-instance v6, Lcom/google/android/mms/MmsException;

    const-string v7, "Failed to persist part, return null."

    invoke-direct {v6, v7}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 732
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "res":Landroid/net/Uri;
    :cond_9
    new-instance v4, Lcom/google/android/mms/MmsException;

    const-string v5, "MIME type of the part must be set."

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public release()V
    .locals 4

    .line 1587
    const-string v0, "content://mms/9223372036854775807/part"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1588
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, v3}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1589
    return-void
.end method

.method public updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 31
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sendReq"    # Lcom/google/android/mms/pdu/SendReq;

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    .line 997
    sget-object v2, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v2

    .line 1000
    :try_start_0
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0, v8}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1005
    :try_start_1
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1008
    goto :goto_0

    .line 1006
    :catch_0
    move-exception v0

    .line 1007
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "PduPersister"

    const-string v4, "updateHeaders: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1010
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1011
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0, v8}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    .line 1013
    new-instance v0, Landroid/content/ContentValues;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1014
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getContentType()[B

    move-result-object v9

    .line 1015
    .local v9, "contentType":[B
    if-eqz v9, :cond_1

    .line 1016
    const-string v2, "ct_t"

    invoke-static {v9}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getDate()J

    move-result-wide v10

    .line 1020
    .local v10, "date":J
    const-wide/16 v2, -0x1

    cmp-long v4, v10, v2

    if-eqz v4, :cond_2

    .line 1021
    const-string v4, "date"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1024
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getDeliveryReport()I

    move-result v12

    .line 1025
    .local v12, "deliveryReport":I
    if-eqz v12, :cond_3

    .line 1026
    const-string v4, "d_rpt"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1029
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getExpiry()J

    move-result-wide v13

    .line 1030
    .local v13, "expiry":J
    cmp-long v2, v13, v2

    if-eqz v2, :cond_4

    .line 1031
    const-string v2, "exp"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1034
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getMessageClass()[B

    move-result-object v15

    .line 1035
    .local v15, "msgClass":[B
    if-eqz v15, :cond_5

    .line 1036
    const-string v2, "m_cls"

    invoke-static {v15}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getPriority()I

    move-result v7

    .line 1040
    .local v7, "priority":I
    if-eqz v7, :cond_6

    .line 1041
    const-string v2, "pri"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1044
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getReadReport()I

    move-result v6

    .line 1045
    .local v6, "readReport":I
    if-eqz v6, :cond_7

    .line 1046
    const-string v2, "rr"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1049
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getTransactionId()[B

    move-result-object v5

    .line 1050
    .local v5, "transId":[B
    if-eqz v5, :cond_8

    .line 1051
    const-string v2, "tr_id"

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    .line 1055
    .local v4, "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v4, :cond_9

    .line 1056
    const-string v2, "sub"

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const-string v2, "sub_cs"

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1059
    :cond_9
    const-string v2, "sub"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getMessageSize()J

    move-result-wide v2

    .line 1063
    .local v2, "messageSize":J
    const-wide/16 v16, 0x0

    cmp-long v16, v2, v16

    if-lez v16, :cond_a

    .line 1064
    move-object/from16 v18, v4

    const-string v4, "m_size"

    .end local v4    # "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v18, "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object/from16 v19, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .end local v5    # "transId":[B
    .local v19, "transId":[B
    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    .line 1067
    .end local v18    # "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v19    # "transId":[B
    .restart local v4    # "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v5    # "transId":[B
    :cond_a
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    .end local v4    # "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v5    # "transId":[B
    .restart local v18    # "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v19    # "transId":[B
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v5

    .line 1068
    .local v5, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1069
    .local v4, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-wide/from16 v20, v2

    sget-object v2, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    .end local v2    # "messageSize":J
    .local v20, "messageSize":J
    array-length v3, v2

    const/16 v16, 0x0

    move/from16 v22, v6

    move/from16 v6, v16

    .end local v6    # "readReport":I
    .local v22, "readReport":I
    :goto_3
    if-ge v6, v3, :cond_10

    move/from16 v23, v3

    aget v3, v2, v6

    .line 1070
    .local v3, "addrType":I
    const/16 v17, 0x0

    .line 1071
    .local v17, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object/from16 v24, v2

    const/16 v2, 0x89

    if-ne v3, v2, :cond_c

    .line 1072
    invoke-virtual {v5, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 1073
    .local v2, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v2, :cond_b

    .line 1074
    move/from16 v25, v7

    const/4 v7, 0x1

    .end local v7    # "priority":I
    .local v25, "priority":I
    new-array v7, v7, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1075
    .end local v17    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v7, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    aput-object v2, v7, v16

    .line 1077
    .end local v2    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object/from16 v17, v7

    goto :goto_4

    .end local v25    # "priority":I
    .local v7, "priority":I
    .restart local v17    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_b
    move/from16 v25, v7

    .end local v7    # "priority":I
    .restart local v25    # "priority":I
    :goto_4
    goto :goto_5

    .line 1078
    .end local v25    # "priority":I
    .restart local v7    # "priority":I
    :cond_c
    move/from16 v25, v7

    .end local v7    # "priority":I
    .restart local v25    # "priority":I
    invoke-virtual {v5, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    .line 1081
    .end local v17    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v2, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_5
    move-object/from16 v2, v17

    if-eqz v2, :cond_e

    .line 1082
    move-object/from16 v26, v9

    move-wide/from16 v27, v10

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 1083
    .end local v10    # "date":J
    .local v9, "msgId":J
    .local v26, "contentType":[B
    .local v27, "date":J
    invoke-direct {v1, v9, v10, v3, v2}, Lcom/google/android/mms/pdu/PduPersister;->updateAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1084
    const/16 v7, 0x97

    if-ne v3, v7, :cond_f

    .line 1085
    array-length v7, v2

    move/from16 v11, v16

    :goto_6
    if-ge v11, v7, :cond_f

    move/from16 v29, v3

    aget-object v3, v2, v11

    .line 1086
    .local v3, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v29, "addrType":I
    if-eqz v3, :cond_d

    .line 1087
    move-object/from16 v30, v2

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v30, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .end local v3    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_7

    .line 1085
    .end local v30    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v2    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_d
    move-object/from16 v30, v2

    .end local v2    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v30    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_7
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v29

    move-object/from16 v2, v30

    goto :goto_6

    .line 1069
    .end local v26    # "contentType":[B
    .end local v27    # "date":J
    .end local v29    # "addrType":I
    .end local v30    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v9, "contentType":[B
    .restart local v10    # "date":J
    :cond_e
    move-object/from16 v26, v9

    move-wide/from16 v27, v10

    .end local v9    # "contentType":[B
    .end local v10    # "date":J
    .restart local v26    # "contentType":[B
    .restart local v27    # "date":J
    :cond_f
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v23

    move-object/from16 v2, v24

    move/from16 v7, v25

    move-object/from16 v9, v26

    move-wide/from16 v10, v27

    goto :goto_3

    .line 1093
    .end local v25    # "priority":I
    .end local v26    # "contentType":[B
    .end local v27    # "date":J
    .restart local v7    # "priority":I
    .restart local v9    # "contentType":[B
    .restart local v10    # "date":J
    :cond_10
    move/from16 v25, v7

    move-object/from16 v26, v9

    move-wide/from16 v27, v10

    .end local v7    # "priority":I
    .end local v9    # "contentType":[B
    .end local v10    # "date":J
    .restart local v25    # "priority":I
    .restart local v26    # "contentType":[B
    .restart local v27    # "date":J
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1094
    iget-object v2, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v2

    .line 1095
    .local v2, "threadId":J
    const-string v6, "thread_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1098
    .end local v2    # "threadId":J
    :cond_11
    iget-object v2, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide/from16 v9, v20

    .end local v20    # "messageSize":J
    .local v9, "messageSize":J
    move-object/from16 v16, v4

    move-object/from16 v11, v18

    move-object v4, v8

    .end local v4    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v18    # "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v11, "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v16, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v18, v5

    move-object/from16 v17, v19

    move-object v5, v0

    .end local v5    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v19    # "transId":[B
    .local v17, "transId":[B
    .local v18, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    move/from16 v19, v22

    .end local v22    # "readReport":I
    .local v19, "readReport":I
    move/from16 v20, v25

    .end local v25    # "priority":I
    .local v20, "priority":I
    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1099
    return-void

    .line 1010
    .end local v0    # "values":Landroid/content/ContentValues;
    .end local v9    # "messageSize":J
    .end local v11    # "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v12    # "deliveryReport":I
    .end local v13    # "expiry":J
    .end local v15    # "msgClass":[B
    .end local v16    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v17    # "transId":[B
    .end local v18    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v19    # "readReport":I
    .end local v20    # "priority":I
    .end local v26    # "contentType":[B
    .end local v27    # "date":J
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;Ljava/util/HashMap;)V
    .locals 17
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "body"    # Lcom/google/android/mms/pdu/PduBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .local p3, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1167
    move-object/from16 v4, p3

    :try_start_0
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1168
    :try_start_1
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0, v2}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    .line 1173
    :try_start_2
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1176
    goto :goto_0

    .line 1174
    :catch_0
    move-exception v0

    .line 1175
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v7, "PduPersister"

    const-string v8, "updateParts: "

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1177
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0, v2}, Lcom/google/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/util/PduCacheEntry;

    .line 1178
    .local v0, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    if-eqz v0, :cond_0

    .line 1179
    invoke-virtual {v0}, Lcom/google/android/mms/util/PduCacheEntry;->getPdu()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v7

    check-cast v7, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    invoke-virtual {v7, v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1184
    .end local v0    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :cond_0
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/4 v7, 0x1

    invoke-virtual {v0, v2, v7}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 1185
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1187
    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1188
    .local v0, "toBeCreated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1190
    .local v6, "toBeUpdated":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v8

    .line 1191
    .local v8, "partsNum":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x28

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1192
    .local v9, "filter":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v8, :cond_4

    .line 1193
    invoke-virtual {v3, v10}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v11

    .line 1194
    .local v11, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v12

    .line 1195
    .local v12, "partUri":Landroid/net/Uri;
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 1196
    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v13

    const-string v14, "mms"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    goto :goto_2

    .line 1199
    :cond_1
    invoke-virtual {v6, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-le v13, v7, :cond_2

    .line 1204
    const-string v13, " AND "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    :cond_2
    const-string v13, "_id"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1208
    const-string v13, "!="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    invoke-virtual {v12}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .end local v11    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v12    # "partUri":Landroid/net/Uri;
    goto :goto_3

    .line 1197
    .restart local v11    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v12    # "partUri":Landroid/net/Uri;
    :cond_3
    :goto_2
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1192
    .end local v11    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v12    # "partUri":Landroid/net/Uri;
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1212
    .end local v10    # "i":I
    :cond_4
    const/16 v7, 0x29

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1214
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 1217
    .local v10, "msgId":J
    iget-object v7, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "/part"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1218
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 1219
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    const/4 v15, 0x2

    const/4 v5, 0x0

    if-le v14, v15, :cond_5

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    :cond_5
    move-object v14, v5

    .line 1217
    :goto_4
    invoke-static {v7, v12, v13, v14, v5}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1222
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/mms/pdu/PduPart;

    .line 1223
    .local v7, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v1, v7, v10, v11, v4}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    .line 1224
    .end local v7    # "part":Lcom/google/android/mms/pdu/PduPart;
    goto :goto_5

    .line 1227
    :cond_6
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1228
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v1, v12, v13, v4}, Lcom/google/android/mms/pdu/PduPersister;->updatePart(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;Ljava/util/HashMap;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1229
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    goto :goto_6

    .line 1231
    .end local v0    # "toBeCreated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    .end local v6    # "toBeUpdated":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    .end local v8    # "partsNum":I
    .end local v9    # "filter":Ljava/lang/StringBuilder;
    .end local v10    # "msgId":J
    :cond_7
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v5

    .line 1232
    :try_start_5
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v6}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 1233
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1234
    monitor-exit v5

    .line 1235
    nop

    .line 1236
    return-void

    .line 1234
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 1185
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1231
    :catchall_2
    move-exception v0

    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v5

    .line 1232
    :try_start_8
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 1233
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 1234
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0
.end method
