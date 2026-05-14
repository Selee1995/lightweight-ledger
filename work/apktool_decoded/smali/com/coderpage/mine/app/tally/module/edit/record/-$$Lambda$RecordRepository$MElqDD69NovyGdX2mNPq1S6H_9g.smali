.class public final synthetic Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$MElqDD69NovyGdX2mNPq1S6H_9g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/base/common/SimpleCallback;

.field public final synthetic f$1:Lcom/coderpage/mine/app/tally/persistence/model/Record;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/base/common/SimpleCallback;Lcom/coderpage/mine/app/tally/persistence/model/Record;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$MElqDD69NovyGdX2mNPq1S6H_9g;->f$0:Lcom/coderpage/base/common/SimpleCallback;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$MElqDD69NovyGdX2mNPq1S6H_9g;->f$1:Lcom/coderpage/mine/app/tally/persistence/model/Record;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$MElqDD69NovyGdX2mNPq1S6H_9g;->f$0:Lcom/coderpage/base/common/SimpleCallback;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$MElqDD69NovyGdX2mNPq1S6H_9g;->f$1:Lcom/coderpage/mine/app/tally/persistence/model/Record;

    invoke-static {v0, v1}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;->lambda$queryRecordById$4(Lcom/coderpage/base/common/SimpleCallback;Lcom/coderpage/mine/app/tally/persistence/model/Record;)V

    return-void
.end method
