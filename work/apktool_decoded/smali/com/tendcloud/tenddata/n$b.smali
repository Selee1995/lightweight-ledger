.class public final enum Lcom/tendcloud/tenddata/n$b;
.super Ljava/lang/Enum;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tendcloud/tenddata/n$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tendcloud/tenddata/n$b;

.field public static final enum AES_DATA_ENTRYCP_LOCK:Lcom/tendcloud/tenddata/n$b;

.field public static final enum AES_DATA_LOCK:Lcom/tendcloud/tenddata/n$b;

.field public static final enum AES_IV_LOCK:Lcom/tendcloud/tenddata/n$b;

.field public static final enum AES_SALT_LOCK:Lcom/tendcloud/tenddata/n$b;

.field public static final enum App_Lock_File:Lcom/tendcloud/tenddata/n$b;

.field public static final enum App_SQL_Lock_File:Lcom/tendcloud/tenddata/n$b;

.field public static final enum BG_Lock_File:Lcom/tendcloud/tenddata/n$b;

.field public static final enum Cloud_Control_Lock_File:Lcom/tendcloud/tenddata/n$b;

.field public static final enum Custom_Device_Id_Lock_File:Lcom/tendcloud/tenddata/n$b;

.field public static final enum EAuth_Lock_File:Lcom/tendcloud/tenddata/n$b;

.field public static final enum Env_Lock_File:Lcom/tendcloud/tenddata/n$b;

.field public static final enum Game_Lock_File:Lcom/tendcloud/tenddata/n$b;

.field public static final enum Push_Lock_File:Lcom/tendcloud/tenddata/n$b;

.field public static final enum Tracking_Lock_File:Lcom/tendcloud/tenddata/n$b;

.field public static final enum Universal_Lock_File:Lcom/tendcloud/tenddata/n$b;


# instance fields
.field private final filePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 19
    new-instance v0, Lcom/tendcloud/tenddata/n$b;

    const-string v1, "Custom_Device_Id_Lock_File"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/tendcloud/tenddata/n$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/n$b;->Custom_Device_Id_Lock_File:Lcom/tendcloud/tenddata/n$b;

    .line 20
    new-instance v1, Lcom/tendcloud/tenddata/n$b;

    const-string v3, "Cloud_Control_Lock_File"

    const/4 v4, 0x1

    const-string v5, "Cloud_Control_Cache_Param"

    invoke-direct {v1, v3, v4, v5}, Lcom/tendcloud/tenddata/n$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/tendcloud/tenddata/n$b;->Cloud_Control_Lock_File:Lcom/tendcloud/tenddata/n$b;

    .line 21
    new-instance v3, Lcom/tendcloud/tenddata/n$b;

    const-string v5, "App_Lock_File"

    const/4 v6, 0x2

    const-string v7, "__App_Synchronous_Lock__"

    invoke-direct {v3, v5, v6, v7}, Lcom/tendcloud/tenddata/n$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/tendcloud/tenddata/n$b;->App_Lock_File:Lcom/tendcloud/tenddata/n$b;

    .line 22
    new-instance v5, Lcom/tendcloud/tenddata/n$b;

    const-string v7, "Tracking_Lock_File"

    const/4 v8, 0x3

    const-string v9, "__Tracking_Synchronous_Lock__"

    invoke-direct {v5, v7, v8, v9}, Lcom/tendcloud/tenddata/n$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/tendcloud/tenddata/n$b;->Tracking_Lock_File:Lcom/tendcloud/tenddata/n$b;

    .line 23
    new-instance v7, Lcom/tendcloud/tenddata/n$b;

    const-string v9, "Env_Lock_File"

    const/4 v10, 0x4

    const-string v11, "__Env_Synchronous_Lock__"

    invoke-direct {v7, v9, v10, v11}, Lcom/tendcloud/tenddata/n$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/tendcloud/tenddata/n$b;->Env_Lock_File:Lcom/tendcloud/tenddata/n$b;

    .line 24
    new-instance v9, Lcom/tendcloud/tenddata/n$b;

    const-string v11, "Game_Lock_File"

    const/4 v12, 0x5

    const-string v13, "__Game_Synchronous_Lock__"

    invoke-direct {v9, v11, v12, v13}, Lcom/tendcloud/tenddata/n$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/tendcloud/tenddata/n$b;->Game_Lock_File:Lcom/tendcloud/tenddata/n$b;

    .line 25
    new-instance v11, Lcom/tendcloud/tenddata/n$b;

    const-string v13, "Push_Lock_File"

    const/4 v14, 0x6

    const-string v15, "__Push_Synchronous_Lock__"

    invoke-direct {v11, v13, v14, v15}, Lcom/tendcloud/tenddata/n$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/tendcloud/tenddata/n$b;->Push_Lock_File:Lcom/tendcloud/tenddata/n$b;

    .line 26
    new-instance v13, Lcom/tendcloud/tenddata/n$b;

    const-string v15, "EAuth_Lock_File"

    const/4 v14, 0x7

    const-string v12, "__EAuth_Synchronous_Lock__"

    invoke-direct {v13, v15, v14, v12}, Lcom/tendcloud/tenddata/n$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/tendcloud/tenddata/n$b;->EAuth_Lock_File:Lcom/tendcloud/tenddata/n$b;

    .line 27
    new-instance v12, Lcom/tendcloud/tenddata/n$b;

    const-string v15, "App_SQL_Lock_File"

    const/16 v14, 0x8

    const-string v10, "__AppSQL_Synchronous_Lock__"

    invoke-direct {v12, v15, v14, v10}, Lcom/tendcloud/tenddata/n$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/tendcloud/tenddata/n$b;->App_SQL_Lock_File:Lcom/tendcloud/tenddata/n$b;

    .line 28
    new-instance v10, Lcom/tendcloud/tenddata/n$b;

    const-string v15, "BG_Lock_File"

    const/16 v14, 0x9

    const-string v8, "__BG_Synchronous_Lock__"

    invoke-direct {v10, v15, v14, v8}, Lcom/tendcloud/tenddata/n$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/tendcloud/tenddata/n$b;->BG_Lock_File:Lcom/tendcloud/tenddata/n$b;

    .line 29
    new-instance v8, Lcom/tendcloud/tenddata/n$b;

    const-string v15, "Universal_Lock_File"

    const/16 v14, 0xa

    const-string v6, "__SDK_Synchronous_Lock__"

    invoke-direct {v8, v15, v14, v6}, Lcom/tendcloud/tenddata/n$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/tendcloud/tenddata/n$b;->Universal_Lock_File:Lcom/tendcloud/tenddata/n$b;

    .line 30
    new-instance v6, Lcom/tendcloud/tenddata/n$b;

    const-string v15, "AES_DATA_LOCK"

    const/16 v14, 0xb

    const-string v4, "_AES_DATA_LOCK"

    invoke-direct {v6, v15, v14, v4}, Lcom/tendcloud/tenddata/n$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/tendcloud/tenddata/n$b;->AES_DATA_LOCK:Lcom/tendcloud/tenddata/n$b;

    .line 31
    new-instance v4, Lcom/tendcloud/tenddata/n$b;

    const-string v15, "AES_DATA_ENTRYCP_LOCK"

    const/16 v14, 0xc

    const-string v2, "_AES_DATA_ENTCRYPT_LOCK"

    invoke-direct {v4, v15, v14, v2}, Lcom/tendcloud/tenddata/n$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/tendcloud/tenddata/n$b;->AES_DATA_ENTRYCP_LOCK:Lcom/tendcloud/tenddata/n$b;

    .line 32
    new-instance v2, Lcom/tendcloud/tenddata/n$b;

    const-string v15, "AES_SALT_LOCK"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "_AES_SALT_LOCK"

    invoke-direct {v2, v15, v14, v4}, Lcom/tendcloud/tenddata/n$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/tendcloud/tenddata/n$b;->AES_SALT_LOCK:Lcom/tendcloud/tenddata/n$b;

    .line 33
    new-instance v4, Lcom/tendcloud/tenddata/n$b;

    const-string v15, "AES_IV_LOCK"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "_AES_IV_LOCK"

    invoke-direct {v4, v15, v14, v2}, Lcom/tendcloud/tenddata/n$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/tendcloud/tenddata/n$b;->AES_IV_LOCK:Lcom/tendcloud/tenddata/n$b;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/tendcloud/tenddata/n$b;

    const/4 v15, 0x0

    aput-object v0, v2, v15

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v14

    .line 18
    sput-object v2, Lcom/tendcloud/tenddata/n$b;->$VALUES:[Lcom/tendcloud/tenddata/n$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    new-instance p1, Ljava/io/File;

    sget-object p2, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/n$b;->filePath:Ljava/lang/String;

    return-void
.end method

.method public static getFeatureLockFileName(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    if-eq p0, v0, :cond_7

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const/4 v0, 0x3

    if-eq p0, v0, :cond_5

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x63

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 68
    :cond_0
    sget-object p0, Lcom/tendcloud/tenddata/n$b;->Universal_Lock_File:Lcom/tendcloud/tenddata/n$b;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/n$b;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 65
    :cond_1
    sget-object p0, Lcom/tendcloud/tenddata/n$b;->BG_Lock_File:Lcom/tendcloud/tenddata/n$b;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/n$b;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 62
    :cond_2
    sget-object p0, Lcom/tendcloud/tenddata/n$b;->App_SQL_Lock_File:Lcom/tendcloud/tenddata/n$b;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/n$b;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 59
    :cond_3
    sget-object p0, Lcom/tendcloud/tenddata/n$b;->EAuth_Lock_File:Lcom/tendcloud/tenddata/n$b;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/n$b;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 56
    :cond_4
    sget-object p0, Lcom/tendcloud/tenddata/n$b;->Push_Lock_File:Lcom/tendcloud/tenddata/n$b;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/n$b;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 53
    :cond_5
    sget-object p0, Lcom/tendcloud/tenddata/n$b;->Game_Lock_File:Lcom/tendcloud/tenddata/n$b;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/n$b;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 50
    :cond_6
    sget-object p0, Lcom/tendcloud/tenddata/n$b;->Env_Lock_File:Lcom/tendcloud/tenddata/n$b;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/n$b;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 47
    :cond_7
    sget-object p0, Lcom/tendcloud/tenddata/n$b;->Tracking_Lock_File:Lcom/tendcloud/tenddata/n$b;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/n$b;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 44
    :cond_8
    sget-object p0, Lcom/tendcloud/tenddata/n$b;->App_Lock_File:Lcom/tendcloud/tenddata/n$b;

    invoke-virtual {p0}, Lcom/tendcloud/tenddata/n$b;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/n$b;
    .locals 1

    .line 18
    const-class v0, Lcom/tendcloud/tenddata/n$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tendcloud/tenddata/n$b;

    return-object p0
.end method

.method public static values()[Lcom/tendcloud/tenddata/n$b;
    .locals 1

    .line 18
    sget-object v0, Lcom/tendcloud/tenddata/n$b;->$VALUES:[Lcom/tendcloud/tenddata/n$b;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/n$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/n$b;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/tendcloud/tenddata/n$b;->filePath:Ljava/lang/String;

    return-object v0
.end method
