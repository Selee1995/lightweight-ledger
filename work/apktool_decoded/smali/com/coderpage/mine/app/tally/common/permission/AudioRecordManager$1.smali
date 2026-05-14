.class Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager$1;
.super Ljava/lang/Object;
.source "AudioRecordManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager$1;->this$0:Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, -0x13

    .line 30
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 32
    iget-object v0, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager$1;->this$0:Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->access$000(Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;)I

    move-result v0

    new-array v0, v0, [B

    .line 33
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager$1;->this$0:Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;

    invoke-static {v1}, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->access$100(Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;)Landroid/media/AudioRecord;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 34
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager$1;->this$0:Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;

    invoke-static {v1}, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->access$200(Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager$1;->this$0:Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;

    invoke-static {v1}, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->access$100(Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;)Landroid/media/AudioRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager$1;->this$0:Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;

    invoke-static {v1}, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->access$100(Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;)Landroid/media/AudioRecord;

    move-result-object v1

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager$1;->this$0:Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;

    invoke-static {v2}, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->access$000(Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v1

    const/4 v2, -0x3

    if-eq v1, v2, :cond_0

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 42
    iget-object v2, p0, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager$1;->this$0:Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;

    invoke-static {v2}, Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;->access$300(Lcom/coderpage/mine/app/tally/common/permission/AudioRecordManager;)Ljava/io/DataOutputStream;

    move-result-object v2

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method
