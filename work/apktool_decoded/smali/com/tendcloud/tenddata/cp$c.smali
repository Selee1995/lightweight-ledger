.class Lcom/tendcloud/tenddata/cp$c;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/cp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private callback:Lcom/tendcloud/tenddata/cq;

.field private features:Lcom/tendcloud/tenddata/a;

.field private mFolderPath:Ljava/lang/String;

.field private final mOperation:Lcom/tendcloud/tenddata/co;

.field private final opm:Lcom/tendcloud/tenddata/cp;

.field final synthetic this$0:Lcom/tendcloud/tenddata/cp;


# direct methods
.method private constructor <init>(Lcom/tendcloud/tenddata/cp;Lcom/tendcloud/tenddata/co;Lcom/tendcloud/tenddata/bx;Lcom/tendcloud/tenddata/cp;)V
    .locals 1

    .line 378
    iput-object p1, p0, Lcom/tendcloud/tenddata/cp$c;->this$0:Lcom/tendcloud/tenddata/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    sget-object p1, Lcom/tendcloud/tenddata/ab;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    .line 380
    iput-object p4, p0, Lcom/tendcloud/tenddata/cp$c;->opm:Lcom/tendcloud/tenddata/cp;

    .line 381
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p3, Lcom/tendcloud/tenddata/bx;->a:Lcom/tendcloud/tenddata/a;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/a;->getDataFolder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/tendcloud/tenddata/cp$c;->mFolderPath:Ljava/lang/String;

    .line 382
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Lcom/tendcloud/tenddata/bx;->a:Lcom/tendcloud/tenddata/a;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/a;->getRootFolder()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Lcom/tendcloud/tenddata/bx;->a:Lcom/tendcloud/tenddata/a;

    .line 383
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/a;->getDataFolder()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tendcloud/tenddata/cp$c;->mFolderPath:Ljava/lang/String;

    .line 384
    iput-object p2, p0, Lcom/tendcloud/tenddata/cp$c;->mOperation:Lcom/tendcloud/tenddata/co;

    .line 385
    iget-object p1, p3, Lcom/tendcloud/tenddata/bx;->f:Lcom/tendcloud/tenddata/cq;

    iput-object p1, p0, Lcom/tendcloud/tenddata/cp$c;->callback:Lcom/tendcloud/tenddata/cq;

    .line 386
    iget-object p1, p3, Lcom/tendcloud/tenddata/bx;->a:Lcom/tendcloud/tenddata/a;

    iput-object p1, p0, Lcom/tendcloud/tenddata/cp$c;->features:Lcom/tendcloud/tenddata/a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tendcloud/tenddata/cp;Lcom/tendcloud/tenddata/co;Lcom/tendcloud/tenddata/bx;Lcom/tendcloud/tenddata/cp;Lcom/tendcloud/tenddata/cp$1;)V
    .locals 0

    .line 370
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tendcloud/tenddata/cp$c;-><init>(Lcom/tendcloud/tenddata/cp;Lcom/tendcloud/tenddata/co;Lcom/tendcloud/tenddata/bx;Lcom/tendcloud/tenddata/cp;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/tendcloud/tenddata/cp$c;->opm:Lcom/tendcloud/tenddata/cp;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 395
    :try_start_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tendcloud/tenddata/cp$c;->mFolderPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 397
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 399
    monitor-exit v1

    return-void

    .line 402
    :cond_0
    iget-object v3, p0, Lcom/tendcloud/tenddata/cp$c;->this$0:Lcom/tendcloud/tenddata/cp;

    iget-object v4, p0, Lcom/tendcloud/tenddata/cp$c;->features:Lcom/tendcloud/tenddata/a;

    invoke-static {v3, v2, v4}, Lcom/tendcloud/tenddata/cp;->a(Lcom/tendcloud/tenddata/cp;Ljava/io/File;Lcom/tendcloud/tenddata/a;)V

    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tendcloud/tenddata/cp$c;->mFolderPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tendcloud/tenddata/cp$c;->mOperation:Lcom/tendcloud/tenddata/co;

    invoke-virtual {v3}, Lcom/tendcloud/tenddata/co;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 404
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 406
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 408
    monitor-exit v1

    return-void

    .line 411
    :cond_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 415
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-wide/16 v4, 0x1

    .line 416
    :try_start_3
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 422
    iget-object v4, p0, Lcom/tendcloud/tenddata/cp$c;->mOperation:Lcom/tendcloud/tenddata/co;

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/co;->d()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 423
    iget-object v4, p0, Lcom/tendcloud/tenddata/cp$c;->mOperation:Lcom/tendcloud/tenddata/co;

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/co;->e()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 424
    iget-object v4, p0, Lcom/tendcloud/tenddata/cp$c;->mOperation:Lcom/tendcloud/tenddata/co;

    invoke-virtual {v4}, Lcom/tendcloud/tenddata/co;->c()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/RandomAccessFile;->write([B)V

    .line 425
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V

    .line 426
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_2

    .line 441
    :try_start_4
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V

    .line 444
    :cond_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 445
    iget-object v0, p0, Lcom/tendcloud/tenddata/cp$c;->callback:Lcom/tendcloud/tenddata/cq;

    if-eqz v0, :cond_5

    .line 446
    :goto_0
    invoke-interface {v0}, Lcom/tendcloud/tenddata/cq;->onStoreSuccess()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    goto :goto_2

    :catchall_0
    move-exception v4

    move-object v6, v3

    move-object v3, v2

    move-object v2, v4

    move-object v4, v6

    goto :goto_1

    :catchall_1
    move-exception v3

    move-object v4, v0

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_1

    :catchall_2
    move-exception v2

    move-object v3, v0

    move-object v4, v3

    .line 426
    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_3
    move-exception v2

    goto :goto_1

    :catchall_4
    move-object v3, v0

    move-object v4, v3

    .line 428
    :catchall_5
    :try_start_7
    iget-object v1, p0, Lcom/tendcloud/tenddata/cp$c;->callback:Lcom/tendcloud/tenddata/cq;

    if-eqz v1, :cond_3

    .line 429
    invoke-interface {v1}, Lcom/tendcloud/tenddata/cq;->onStoreFailed()V

    .line 430
    iput-object v0, p0, Lcom/tendcloud/tenddata/cp$c;->callback:Lcom/tendcloud/tenddata/cq;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :cond_3
    if-eqz v4, :cond_4

    .line 441
    :try_start_8
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V

    :cond_4
    if-eqz v3, :cond_5

    .line 444
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 445
    iget-object v0, p0, Lcom/tendcloud/tenddata/cp$c;->callback:Lcom/tendcloud/tenddata/cq;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-eqz v0, :cond_5

    goto :goto_0

    :catchall_6
    :cond_5
    :goto_2
    return-void

    :catchall_7
    move-exception v0

    if-eqz v4, :cond_6

    .line 441
    :try_start_9
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V

    :cond_6
    if-eqz v3, :cond_7

    .line 444
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 445
    iget-object v1, p0, Lcom/tendcloud/tenddata/cp$c;->callback:Lcom/tendcloud/tenddata/cq;

    if-eqz v1, :cond_7

    .line 446
    invoke-interface {v1}, Lcom/tendcloud/tenddata/cq;->onStoreSuccess()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 453
    :catchall_8
    :cond_7
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
