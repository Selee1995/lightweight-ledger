.class public final synthetic Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$36XTtnlW7uq4xBt9o7ifN_3MkSM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;

.field public final synthetic f$1:Lcom/coderpage/mine/app/tally/common/RecordType;

.field public final synthetic f$2:Lcom/coderpage/base/common/SimpleCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;Lcom/coderpage/mine/app/tally/common/RecordType;Lcom/coderpage/base/common/SimpleCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$36XTtnlW7uq4xBt9o7ifN_3MkSM;->f$0:Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;

    iput-object p2, p0, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$36XTtnlW7uq4xBt9o7ifN_3MkSM;->f$1:Lcom/coderpage/mine/app/tally/common/RecordType;

    iput-object p3, p0, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$36XTtnlW7uq4xBt9o7ifN_3MkSM;->f$2:Lcom/coderpage/base/common/SimpleCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$36XTtnlW7uq4xBt9o7ifN_3MkSM;->f$0:Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;

    iget-object v1, p0, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$36XTtnlW7uq4xBt9o7ifN_3MkSM;->f$1:Lcom/coderpage/mine/app/tally/common/RecordType;

    iget-object v2, p0, Lcom/coderpage/mine/app/tally/module/edit/record/-$$Lambda$RecordRepository$36XTtnlW7uq4xBt9o7ifN_3MkSM;->f$2:Lcom/coderpage/base/common/SimpleCallback;

    invoke-virtual {v0, v1, v2}, Lcom/coderpage/mine/app/tally/module/edit/record/RecordRepository;->lambda$queryAllCategory$3$RecordRepository(Lcom/coderpage/mine/app/tally/common/RecordType;Lcom/coderpage/base/common/SimpleCallback;)V

    return-void
.end method
