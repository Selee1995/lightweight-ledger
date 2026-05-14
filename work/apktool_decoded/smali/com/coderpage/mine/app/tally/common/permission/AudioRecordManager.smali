.class public Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;
.super Ljava/lang/Object;
.source "AudioRecordManager.java"


# instance fields
.field private bufferSize:I

.field private dos:Ljava/io/DataOutputStream;

.field public file:Ljava/io/File;

.field private isStart:Z

.field private length:J

.field private mRecorder:Landroid/media/AudioRecord;

.field recordRunnable:Ljava/lang/Runnable;

.field private recordThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->isStart:Z

    .line 26
    new-instance v0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager$1;

    invoke-direct {v0, p0}, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager$1;-><init>(Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->recordRunnable:Ljava/lang/Runnable;

    const/16 v0, 0x1f40

    const/16 v1, 0x10

    const/4 v2, 0x2

    .line 57
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->bufferSize:I

    .line 59
    new-instance v0, Landroid/media/AudioRecord;

    iget v1, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->bufferSize:I

    mul-int/lit8 v8, v1, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x1f40

    const/16 v6, 0x10

    const/4 v7, 0x2

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->mRecorder:Landroid/media/AudioRecord;

    return-void
.end method

.method static synthetic access$000(Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->bufferSize:I

    return p0
.end method

.method static synthetic access$100(Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;)Landroid/media/AudioRecord;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->mRecorder:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->isStart:Z

    return p0
.end method

.method static synthetic access$300(Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;)Ljava/io/DataOutputStream;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->dos:Ljava/io/DataOutputStream;

    return-object p0
.end method

.method private deleteFile()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private destroyThread()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 72
    :try_start_0
    iput-boolean v0, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->isStart:Z

    .line 73
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->recordThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v2, :cond_0

    .line 75
    :try_start_1
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->recordThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 77
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    iput-object v1, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->recordThread:Ljava/lang/Thread;

    .line 81
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->recordThread:Ljava/lang/Thread;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 83
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    :goto_1
    iput-object v1, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->recordThread:Ljava/lang/Thread;

    return-void

    :goto_2
    iput-object v1, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->recordThread:Ljava/lang/Thread;

    .line 86
    throw v0
.end method

.method private setPath(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->file:Ljava/io/File;

    .line 105
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->deleteFile()V

    .line 106
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 107
    new-instance p1, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->file:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {p1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->dos:Ljava/io/DataOutputStream;

    return-void
.end method

.method private startThread()V
    .locals 2

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->isStart:Z

    .line 94
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->recordThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->recordRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->recordThread:Ljava/lang/Thread;

    .line 96
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getSuccess()Z
    .locals 5

    .line 64
    iget-wide v0, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->length:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startRecord(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1}, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->setPath(Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->startThread()V

    return-void
.end method

.method public stopRecord()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-wide/16 v0, 0xfa

    .line 123
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 124
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->destroyThread()V

    .line 125
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->dos:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_2

    .line 134
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 135
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->length:J

    .line 138
    invoke-direct {p0}, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->deleteFile()V

    return-void
.end method
