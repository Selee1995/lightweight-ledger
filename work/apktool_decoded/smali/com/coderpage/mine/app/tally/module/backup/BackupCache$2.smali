.class Lcom/coderpage/mine/app/tally/module/backup/BackupCache$2;
.super Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;
.source "BackupCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->backup2JsonDocumentFileSync(Lcom/coderpage/mine/app/tally/module/backup/BackupModel;Lcom/coderpage/mine/app/tally/module/backup/BackupFileNameFormatter;Lcom/coderpage/base/common/Callback;)Lcom/coderpage/base/common/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupCache;

.field final synthetic val$backupModel:Lcom/coderpage/mine/app/tally/module/backup/BackupModel;

.field final synthetic val$callback:Lcom/coderpage/base/common/Callback;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/backup/BackupCache;Lcom/coderpage/mine/app/tally/module/backup/BackupModel;Lcom/coderpage/base/common/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$backupModel",
            "val$callback"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache$2;->this$0:Lcom/coderpage/mine/app/tally/module/backup/BackupCache;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache$2;->val$backupModel:Lcom/coderpage/mine/app/tally/module/backup/BackupModel;

    iput-object p3, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache$2;->val$callback:Lcom/coderpage/base/common/Callback;

    invoke-direct {p0}, Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZLandroid/net/Uri;Lcom/coderpage/base/common/IError;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "success",
            "uri",
            "error"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 139
    invoke-static {}, Lcom/coderpage/mine/app/tally/module/backup/BackupCache;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5907\u4efd JSON \u6587\u4ef6\u6210\u529f "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/coderpage/base/utils/LogUtils;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache$2;->val$callback:Lcom/coderpage/base/common/Callback;

    invoke-interface {p1, p2}, Lcom/coderpage/base/common/Callback;->success(Ljava/lang/Object;)V

    return-void

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache$2;->val$callback:Lcom/coderpage/base/common/Callback;

    invoke-interface {p1, p3}, Lcom/coderpage/base/common/Callback;->failure(Ljava/lang/Object;)V

    return-void
.end method

.method public onSave(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "os"
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 128
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/backup/BackupCache$2;->val$backupModel:Lcom/coderpage/mine/app/tally/module/backup/BackupModel;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p1, v0, v1}, Lcom/alibaba/fastjson/JSON;->writeJSONStringTo(Ljava/lang/Object;Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void
.end method
