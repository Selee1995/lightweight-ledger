.class Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel$1;
.super Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;
.source "SettingViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->onExportDataExcelClick(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;


# direct methods
.method constructor <init>(Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;

    invoke-direct {p0}, Lcom/coderpage/mine/persistence/document/DocumentManager$SaveTask;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onResult$0$SettingViewModel$1(Landroid/net/Uri;)V
    .locals 3

    .line 139
    new-instance v0, Lcom/coderpage/mine/app/tally/common/share/ShareProxy;

    invoke-direct {v0}, Lcom/coderpage/mine/app/tally/common/share/ShareProxy;-><init>()V

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;

    invoke-virtual {v1}, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->getApplication()Landroid/app/Application;

    move-result-object v1

    sget-object v2, Lcom/coderpage/mine/common/Mime;->CSV:Lcom/coderpage/mine/common/Mime;

    invoke-virtual {v2}, Lcom/coderpage/mine/common/Mime;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/coderpage/mine/app/tally/common/share/ShareProxy;->shareFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public onResult(ZLandroid/net/Uri;Lcom/coderpage/base/common/IError;)V
    .locals 0
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

    if-nez p1, :cond_1

    .line 135
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;

    if-nez p3, :cond_0

    const-string p2, "export failed"

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Lcom/coderpage/base/common/IError;->msg()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p1, p2}, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->access$200(Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;Ljava/lang/String;)V

    return-void

    .line 138
    :cond_1
    iget-object p1, p0, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;

    new-instance p3, Lcom/coderpage/mine/app/tally/module/setting/-$$Lambda$SettingViewModel$1$S7d0kFEmsLE-fnIBDE5qdQTEP6A;

    invoke-direct {p3, p0, p2}, Lcom/coderpage/mine/app/tally/module/setting/-$$Lambda$SettingViewModel$1$S7d0kFEmsLE-fnIBDE5qdQTEP6A;-><init>(Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel$1;Landroid/net/Uri;)V

    invoke-static {p1, p3}, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->access$300(Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSave(Ljava/io/OutputStream;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "os"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 100
    iget-object v0, v1, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->access$000(Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 101
    invoke-static {}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->getInstance()Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/TallyDatabase;->recordDao()Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/coderpage/mine/app/tally/persistence/sql/dao/RecordDao;->queryAll()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    .line 103
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string v6, "utf-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    move-object/from16 v7, p1

    invoke-direct {v5, v7, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 104
    new-instance v5, Lorg/apache/commons/csv/CSVPrinter;

    sget-object v6, Lorg/apache/commons/csv/CSVFormat;->EXCEL:Lorg/apache/commons/csv/CSVFormat;

    const/4 v7, 0x7

    new-array v8, v7, [Ljava/lang/String;

    const-string v9, "UUID"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-string v9, "\u91d1\u989d"

    const/4 v11, 0x1

    aput-object v9, v8, v11

    const-string v9, "\u5206\u7c7b"

    const/4 v12, 0x2

    aput-object v9, v8, v12

    const-string v9, "\u7c7b\u578b"

    const/4 v13, 0x3

    aput-object v9, v8, v13

    const-string v9, "\u65e5\u671f"

    const/4 v14, 0x4

    aput-object v9, v8, v14

    const-string v9, "\u65f6\u95f4\u6233\uff08\u6beb\u79d2\uff09"

    const/4 v15, 0x5

    aput-object v9, v8, v15

    const-string v9, "\u5907\u6ce8"

    const/16 v16, 0x6

    aput-object v9, v8, v16

    invoke-virtual {v6, v8}, Lorg/apache/commons/csv/CSVFormat;->withHeader([Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lorg/apache/commons/csv/CSVPrinter;-><init>(Ljava/lang/Appendable;Lorg/apache/commons/csv/CSVFormat;)V

    .line 105
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coderpage/mine/app/tally/persistence/model/Record;

    .line 107
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getType()I

    move-result v6

    if-ne v6, v11, :cond_0

    .line 108
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v6

    const v8, 0x7f0e00d1

    invoke-static {v6, v8}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_0
    move-object v6, v2

    .line 110
    :goto_1
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getType()I

    move-result v8

    if-nez v8, :cond_1

    .line 111
    invoke-static {}, Lcom/coderpage/mine/MineApp;->getAppContext()Lcom/coderpage/mine/MineApp;

    move-result-object v6

    const v8, 0x7f0e00ce

    invoke-static {v6, v8}, Lcom/coderpage/base/utils/ResUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    :cond_1
    new-array v8, v7, [Ljava/lang/Object;

    .line 114
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getSyncId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    .line 115
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getAmount()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/coderpage/mine/app/tally/common/utils/TallyUtils;->formatDisplayMoney(D)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    .line 116
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getCategoryName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    aput-object v6, v8, v13

    .line 118
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getTime()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/coderpage/mine/app/tally/utils/TimeUtils;->getDatePreciseMinute(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v14

    .line 119
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getTime()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v8, v15

    .line 120
    invoke-virtual {v4}, Lcom/coderpage/mine/app/tally/persistence/model/Record;->getDesc()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v16

    .line 113
    invoke-virtual {v5, v8}, Lorg/apache/commons/csv/CSVPrinter;->printRecord([Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-array v0, v10, [Ljava/lang/Object;

    .line 122
    invoke-virtual {v5, v0}, Lorg/apache/commons/csv/CSVPrinter;->printRecord([Ljava/lang/Object;)V

    .line 123
    invoke-virtual {v5}, Lorg/apache/commons/csv/CSVPrinter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 125
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    iget-object v2, v1, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->access$100(Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :goto_2
    iget-object v0, v1, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;

    invoke-static {v0}, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->access$000(Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    :goto_3
    iget-object v2, v1, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel$1;->this$0:Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;

    invoke-static {v2}, Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;->access$000(Lcom/coderpage/mine/app/tally/module/setting/SettingViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 129
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
