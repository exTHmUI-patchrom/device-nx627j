.class public Lcom/android/server/NubiaPermissionAsyncDialog;
.super Lcom/android/server/NubiaBasePermissionDialog;
.source "NubiaPermissionAsyncDialog.java"


# static fields
.field static final ACTION_ALLOWED:I = 0x2

.field static final ACTION_IGNORED:I = 0x4

.field static final ACTION_IGNORED_TIMEOUT:I = 0x8

.field static final ACTION_TIMEDOWN:I = 0xf

.field private static final CALENDAR_PERMISSIONS:[Ljava/lang/String;

.field private static final CALLLOG_PERMISSIONS:[Ljava/lang/String;

.field private static final CAMERA_PERMISSIONS:[Ljava/lang/String;

.field private static final CONTACTS_PERMISSIONS:[Ljava/lang/String;

.field static final DISMISS_TIMEOUT:J = 0x3a98L

.field public static final HIDE_PERMISSIONS_FOR_CTA:[Ljava/lang/String;

.field private static final LOCATION_PERMISSIONS:[Ljava/lang/String;

.field private static final MICROPHONE_PERMISSIONS:[Ljava/lang/String;

.field static final ONE_SECOND:J = 0x3e8L

.field public static final PERMISSION_HAS_CHILDREN:[[Ljava/lang/String;

.field private static final PHONE_PERMISSIONS:[Ljava/lang/String;

.field private static final SENSORS_PERMISSIONS:[Ljava/lang/String;

.field private static final SMS_PERMISSIONS:[Ljava/lang/String;

.field private static final STORAGE_PERMISSIONS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "NubiaPermissionAsyncDialog"


# instance fields
.field private final dialogQueue:Lcom/android/server/NubiaPermissionDialogReqQueue;

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private mCancel:Landroid/widget/Button;

.field private mChoice:Landroid/widget/CheckBox;

.field private final mCode:I

.field private mConfirm:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mModeAsk:I

.field final mOpLabels:[Ljava/lang/CharSequence;

.field private final mPM:Landroid/content/pm/PackageManager;

.field private final mPackageName:Ljava/lang/String;

.field private final mService:Lcom/android/server/AppOpsService;

.field private mUid:I

.field private final mUserHandle:Landroid/os/UserHandle;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 78
    const-string v0, "android.permission.ANSWER_PHONE_CALLS"

    const-string v1, "android.permission.READ_PHONE_NUMBERS"

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "android.permission.CALL_PHONE"

    const-string v4, "android.permission.ACCEPT_HANDOVER"

    const-string v5, "android.permission.USE_SIP"

    const-string v6, "com.android.voicemail.permission.ADD_VOICEMAIL"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/NubiaPermissionAsyncDialog;->PHONE_PERMISSIONS:[Ljava/lang/String;

    .line 88
    const-string v0, "android.permission.READ_CALL_LOG"

    const-string v1, "android.permission.WRITE_CALL_LOG"

    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/NubiaPermissionAsyncDialog;->CALLLOG_PERMISSIONS:[Ljava/lang/String;

    .line 94
    const-string v0, "android.permission.READ_CONTACTS"

    const-string v1, "android.permission.WRITE_CONTACTS"

    const-string v2, "android.permission.GET_ACCOUNTS"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/NubiaPermissionAsyncDialog;->CONTACTS_PERMISSIONS:[Ljava/lang/String;

    .line 100
    const-string v1, "android.permission.SEND_SMS"

    const-string v2, "android.permission.RECEIVE_SMS"

    const-string v3, "android.permission.READ_SMS"

    const-string v4, "android.permission.RECEIVE_WAP_PUSH"

    const-string v5, "android.permission.RECEIVE_MMS"

    const-string v6, "android.permission.READ_CELL_BROADCASTS"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/NubiaPermissionAsyncDialog;->SMS_PERMISSIONS:[Ljava/lang/String;

    .line 108
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/NubiaPermissionAsyncDialog;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    .line 112
    const-string v0, "android.permission.READ_CALENDAR"

    const-string v1, "android.permission.WRITE_CALENDAR"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/NubiaPermissionAsyncDialog;->CALENDAR_PERMISSIONS:[Ljava/lang/String;

    .line 116
    const-string v0, "android.permission.RECORD_AUDIO"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/NubiaPermissionAsyncDialog;->MICROPHONE_PERMISSIONS:[Ljava/lang/String;

    .line 118
    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/NubiaPermissionAsyncDialog;->CAMERA_PERMISSIONS:[Ljava/lang/String;

    .line 120
    const-string v0, "android.permission.BODY_SENSORS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/NubiaPermissionAsyncDialog;->SENSORS_PERMISSIONS:[Ljava/lang/String;

    .line 122
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/NubiaPermissionAsyncDialog;->STORAGE_PERMISSIONS:[Ljava/lang/String;

    .line 126
    const/16 v0, 0xa

    new-array v0, v0, [[Ljava/lang/String;

    sget-object v1, Lcom/android/server/NubiaPermissionAsyncDialog;->PHONE_PERMISSIONS:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/NubiaPermissionAsyncDialog;->CALLLOG_PERMISSIONS:[Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/NubiaPermissionAsyncDialog;->CONTACTS_PERMISSIONS:[Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/NubiaPermissionAsyncDialog;->SMS_PERMISSIONS:[Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/NubiaPermissionAsyncDialog;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/NubiaPermissionAsyncDialog;->CALENDAR_PERMISSIONS:[Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/NubiaPermissionAsyncDialog;->MICROPHONE_PERMISSIONS:[Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/NubiaPermissionAsyncDialog;->CAMERA_PERMISSIONS:[Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/NubiaPermissionAsyncDialog;->SENSORS_PERMISSIONS:[Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/NubiaPermissionAsyncDialog;->STORAGE_PERMISSIONS:[Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/NubiaPermissionAsyncDialog;->PERMISSION_HAS_CHILDREN:[[Ljava/lang/String;

    .line 139
    const-string v0, "android.permission.PROCESS_OUTGOING_CALLS"

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/NubiaPermissionAsyncDialog;->HIDE_PERMISSIONS_FOR_CTA:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/AppOpsService;IILjava/lang/String;Lcom/android/server/NubiaPermissionDialogReqQueue;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/AppOpsService;
    .param p3, "code"    # I
    .param p4, "uid"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "queue"    # Lcom/android/server/NubiaPermissionDialogReqQueue;

    .line 152
    invoke-direct {p0, p1}, Lcom/android/server/NubiaBasePermissionDialog;-><init>(Landroid/content/Context;)V

    .line 250
    new-instance v0, Lcom/android/server/NubiaPermissionAsyncDialog$4;

    invoke-direct {v0, p0}, Lcom/android/server/NubiaPermissionAsyncDialog$4;-><init>(Lcom/android/server/NubiaPermissionAsyncDialog;)V

    iput-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mHandler:Landroid/os/Handler;

    .line 154
    iput-object p1, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mContext:Landroid/content/Context;

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 157
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mUserHandle:Landroid/os/UserHandle;

    .line 158
    const-string v1, "appops"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 159
    iget-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mPM:Landroid/content/pm/PackageManager;

    .line 160
    iput-object p2, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mService:Lcom/android/server/AppOpsService;

    .line 161
    iput p3, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mCode:I

    .line 162
    iput-object p5, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mPackageName:Ljava/lang/String;

    .line 163
    iput p4, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mUid:I

    .line 164
    iput-object p6, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->dialogQueue:Lcom/android/server/NubiaPermissionDialogReqQueue;

    .line 165
    const/high16 v1, 0x3020000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mOpLabels:[Ljava/lang/CharSequence;

    .line 166
    invoke-direct {p0}, Lcom/android/server/NubiaPermissionAsyncDialog;->revokeModeAsk()I

    move-result v1

    iput v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mModeAsk:I

    .line 167
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/NubiaPermissionAsyncDialog;->setCancelable(Z)V

    .line 169
    invoke-virtual {p0}, Lcom/android/server/NubiaPermissionAsyncDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x30a002d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mView:Landroid/view/View;

    .line 170
    iget-object v2, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mView:Landroid/view/View;

    const v3, 0x30800ac

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 171
    .local v2, "tv":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mView:Landroid/view/View;

    const v4, 0x3080034

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mChoice:Landroid/widget/CheckBox;

    .line 172
    iget-object v3, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mView:Landroid/view/View;

    const v4, 0x30800a8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mCancel:Landroid/widget/Button;

    .line 173
    iget-object v3, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mCancel:Landroid/widget/Button;

    new-instance v4, Lcom/android/server/NubiaPermissionAsyncDialog$1;

    invoke-direct {v4, p0}, Lcom/android/server/NubiaPermissionAsyncDialog$1;-><init>(Lcom/android/server/NubiaPermissionAsyncDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/server/NubiaPermissionAsyncDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iget-object v3, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mCancel:Landroid/widget/Button;

    const v4, 0x30c002c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v3, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mView:Landroid/view/View;

    const v4, 0x30800a7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mConfirm:Landroid/widget/Button;

    .line 181
    iget-object v3, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mConfirm:Landroid/widget/Button;

    new-instance v4, Lcom/android/server/NubiaPermissionAsyncDialog$2;

    invoke-direct {v4, p0}, Lcom/android/server/NubiaPermissionAsyncDialog$2;-><init>(Lcom/android/server/NubiaPermissionAsyncDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v3, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mChoice:Landroid/widget/CheckBox;

    new-instance v4, Lcom/android/server/NubiaPermissionAsyncDialog$3;

    invoke-direct {v4, p0}, Lcom/android/server/NubiaPermissionAsyncDialog$3;-><init>(Lcom/android/server/NubiaPermissionAsyncDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v3, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/NubiaPermissionAsyncDialog;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "name":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 196
    iget-object v3, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mPackageName:Ljava/lang/String;

    .line 197
    :cond_0
    iget v4, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mCode:I

    invoke-direct {p0}, Lcom/android/server/NubiaPermissionAsyncDialog;->revokeOpMobileNetWork()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 198
    const v4, 0x30c0082

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 200
    :cond_1
    const v4, 0x30c0081

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :goto_0
    iget-object v4, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mView:Landroid/view/View;

    const v5, 0x30800ae

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x30c0084

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v1

    const/4 v1, 0x1

    iget-object v7, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mOpLabels:[Ljava/lang/CharSequence;

    iget v8, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mCode:I

    aget-object v7, v7, v8

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/server/NubiaPermissionAsyncDialog;->setView(Landroid/view/View;)V

    .line 205
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionAsyncDialog;

    .line 47
    iget-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionAsyncDialog;

    .line 47
    iget-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mChoice:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionAsyncDialog;

    .line 47
    iget-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionAsyncDialog;

    .line 47
    iget-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionAsyncDialog;

    .line 47
    iget-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionAsyncDialog;

    .line 47
    iget-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mConfirm:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/NubiaPermissionAsyncDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionAsyncDialog;

    .line 47
    iget v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mCode:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/NubiaPermissionAsyncDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionAsyncDialog;

    .line 47
    iget v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mUid:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/NubiaPermissionAsyncDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionAsyncDialog;

    .line 47
    iget-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/NubiaPermissionAsyncDialog;)Lcom/android/server/NubiaPermissionDialogReqQueue;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionAsyncDialog;

    .line 47
    iget-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->dialogQueue:Lcom/android/server/NubiaPermissionDialogReqQueue;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/NubiaPermissionAsyncDialog;)Lcom/android/server/AppOpsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionAsyncDialog;

    .line 47
    iget-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mService:Lcom/android/server/AppOpsService;

    return-object v0
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/android/server/NubiaPermissionAsyncDialog;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/app/AppOpsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NubiaPermissionAsyncDialog;

    .line 47
    iget-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 238
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v2, 0x2200

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 243
    nop

    .line 244
    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 247
    :cond_0
    return-object v3

    .line 241
    :catch_0
    move-exception v2

    .line 242
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v3
.end method

.method private revokeModeAsk()I
    .locals 4

    .line 222
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 224
    .local v0, "mode":Ljava/lang/Integer;
    :try_start_0
    const-string v1, "android.app.AppOpsManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 225
    .local v1, "AppOpsManager":Ljava/lang/Class;
    const-string v2, "MODE_ASK"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 226
    .local v2, "modeAsk":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v0, v3

    .line 227
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 228
    .end local v1    # "AppOpsManager":Ljava/lang/Class;
    .end local v2    # "modeAsk":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    .end local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private revokeOpMobileNetWork()I
    .locals 4

    .line 208
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 210
    .local v0, "op":Ljava/lang/Integer;
    :try_start_0
    const-string v1, "android.app.AppOpsManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 211
    .local v1, "AppOpsManager":Ljava/lang/Class;
    const-string v2, "OP_ACCESS_MOBILE_NETWORK"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 212
    .local v2, "modeAsk":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v0, v3

    .line 213
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 214
    .end local v1    # "AppOpsManager":Ljava/lang/Class;
    .end local v2    # "modeAsk":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "NubiaPermissionAsyncDialog"

    const-string v3, "OP_ACCESS_MOBILE_NETWORK not define."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method
