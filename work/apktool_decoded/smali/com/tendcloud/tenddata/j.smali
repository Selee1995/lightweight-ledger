.class public Lcom/tendcloud/tenddata/j;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static final a:Ljava/lang/String; = "pref.deviceid.key"

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/lang/String; = ".tcookieid"

.field private static final e:Ljava/lang/String; = ".tlocalcookieid"

.field private static volatile f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[0-4][0-9a-f]{24,32}"

    .line 27
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/j;->b:Ljava/util/regex/Pattern;

    const-string v0, "[0-4][0-9a-f]{32}"

    .line 30
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/j;->c:Ljava/util/regex/Pattern;

    const-string v0, "TD_Custom_Dev_Id"

    .line 38
    sput-object v0, Lcom/tendcloud/tenddata/j;->g:Ljava/lang/String;

    const/4 v0, 0x0

    .line 374
    sput-object v0, Lcom/tendcloud/tenddata/j;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/tendcloud/tenddata/j;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/tendcloud/tenddata/j;->f:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 42
    invoke-static {p0}, Lcom/tendcloud/tenddata/j;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tendcloud/tenddata/j;->f:Ljava/lang/String;

    .line 44
    :cond_0
    sget-object p0, Lcom/tendcloud/tenddata/j;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static a(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x17

    .line 92
    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 93
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 98
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 99
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    new-instance v0, Ljava/io/File;

    .line 101
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-static {p0}, Lcom/tendcloud/tenddata/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    invoke-static {v0}, Lcom/tendcloud/tenddata/j;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-static {p1}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 105
    new-instance p1, Ljava/io/File;

    .line 106
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".tid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-static {p0}, Lcom/tendcloud/tenddata/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    invoke-static {p1}, Lcom/tendcloud/tenddata/j;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 151
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v1, :cond_0

    .line 154
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 p0, 0x80

    :try_start_2
    new-array p0, p0, [B

    .line 156
    invoke-virtual {v1, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .line 157
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v2}, Ljava/lang/String;-><init>([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 173
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    return-object v3

    :catchall_1
    nop

    goto :goto_0

    :catchall_2
    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    :cond_1
    return-object v0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    .line 118
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 119
    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_2

    .line 122
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 123
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "/sdcard"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 124
    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 125
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/tendcloud/tenddata/j;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    return-object v0

    .line 130
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 131
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    .line 132
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 133
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/tendcloud/tenddata/j;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    :cond_4
    :goto_2
    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12

    .line 217
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 218
    array-length v1, v0

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 221
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 222
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "/sdcard"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 223
    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, ".tcookieid"

    if-eqz v5, :cond_1

    .line 224
    :try_start_1
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/tendcloud/tenddata/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 227
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5, p1}, Lcom/tendcloud/tenddata/j;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 230
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 231
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_3

    aget-object v8, v4, v7

    .line 232
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->canWrite()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 233
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-static {p0}, Lcom/tendcloud/tenddata/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 236
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v9, p1}, Lcom/tendcloud/tenddata/j;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catchall_0
    :cond_4
    :goto_2
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    .line 205
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, ".tlocalcookieid"

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-static {p0}, Lcom/tendcloud/tenddata/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 205
    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/j;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    .line 258
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 259
    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Lcom/tendcloud/tenddata/y;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    sget-object v1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    const/16 v2, 0x1d

    invoke-static {v1, v2}, Lcom/tendcloud/tenddata/y;->a(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 261
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 268
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 269
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 270
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    const/16 p1, 0x9

    .line 271
    invoke-static {p1}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 272
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "setReadable"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {p1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    .line 274
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v6

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 276
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod 444 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-object v0, v1

    goto :goto_3

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 286
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_1
    nop

    :goto_3
    if-eqz v0, :cond_4

    goto :goto_2

    :catchall_2
    :cond_4
    :goto_4
    return-void
.end method

.method static a()Z
    .locals 2

    const/16 v0, 0x9

    const/4 v1, 0x1

    .line 364
    :try_start_0
    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 v0, 0x1

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method private static b()Ljava/lang/String;
    .locals 4

    const-string v0, "mac"

    .line 338
    invoke-static {v0}, Lcom/tendcloud/tenddata/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "androidId"

    .line 340
    invoke-static {v0}, Lcom/tendcloud/tenddata/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    :cond_0
    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "pref.deviceid.key"

    :try_start_0
    const-string v1, "tdid"

    const/4 v2, 0x0

    .line 188
    invoke-static {p0, v1, v0, v2}, Lcom/tendcloud/tenddata/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {v1}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 193
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object v1

    :catchall_0
    const-string p0, ""

    return-object p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "tdid"

    const/4 v1, 0x0

    .line 298
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 301
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref.deviceid.key"

    .line 302
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 303
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 377
    sget-object v0, Lcom/tendcloud/tenddata/j;->h:Ljava/lang/String;

    if-nez v0, :cond_4

    :try_start_0
    const-string v0, "sensor"

    .line 380
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    const/4 v0, -0x1

    .line 381
    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    const/16 v0, 0x40

    new-array v1, v0, [Landroid/hardware/Sensor;

    .line 383
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 384
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ge v3, v0, :cond_0

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ltz v3, :cond_0

    .line 385
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    aput-object v2, v1, v3

    goto :goto_0

    .line 387
    :cond_1
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 389
    aget-object v3, v1, v2

    if-eqz v3, :cond_2

    .line 390
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x2d

    .line 391
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-object v3, v1, v2

    .line 392
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getVersion()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 395
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tendcloud/tenddata/j;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    :catchall_0
    :cond_4
    sget-object p0, Lcom/tendcloud/tenddata/j;->h:Ljava/lang/String;

    return-object p0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 49
    invoke-static {p0}, Lcom/tendcloud/tenddata/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {}, Lcom/tendcloud/tenddata/j;->a()Z

    move-result v1

    const-string v2, ".tlocalcookieid"

    .line 51
    invoke-static {p0, v1, v2}, Lcom/tendcloud/tenddata/j;->a(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-static {v0}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/tendcloud/tenddata/j;->c:Ljava/util/regex/Pattern;

    .line 54
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    goto :goto_1

    .line 56
    :cond_0
    invoke-static {v2}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/tendcloud/tenddata/j;->c:Ljava/util/regex/Pattern;

    .line 57
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    const-string v3, ".tcookieid"

    .line 60
    invoke-static {v3}, Lcom/tendcloud/tenddata/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 61
    invoke-static {p0, v1, v3}, Lcom/tendcloud/tenddata/j;->a(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v3, v6, v4

    :goto_0
    if-ge v7, v5, :cond_3

    .line 63
    aget-object v3, v6, v7

    .line 64
    invoke-static {v3}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/tendcloud/tenddata/j;->c:Ljava/util/regex/Pattern;

    .line 65
    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 71
    :goto_1
    invoke-static {v3}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v3, 0x1d

    .line 73
    invoke-static {v3}, Lcom/tendcloud/tenddata/y;->a(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 74
    invoke-static {}, Lcom/tendcloud/tenddata/j;->b()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 76
    :cond_4
    invoke-static {p0}, Lcom/tendcloud/tenddata/j;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 80
    :cond_5
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 81
    invoke-static {p0, v3}, Lcom/tendcloud/tenddata/j;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    :cond_6
    invoke-static {v2}, Lcom/tendcloud/tenddata/y;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 85
    invoke-static {p0, v3, v1}, Lcom/tendcloud/tenddata/j;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_7
    return-object v3
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 324
    invoke-static {p0}, Lcom/tendcloud/tenddata/j;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/tendcloud/tenddata/y;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 351
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    invoke-static {p0}, Lcom/tendcloud/tenddata/l;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "mac"

    invoke-static {v1}, Lcom/tendcloud/tenddata/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "androidId"

    invoke-static {p0}, Lcom/tendcloud/tenddata/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const-string p0, ""

    return-object p0
.end method
