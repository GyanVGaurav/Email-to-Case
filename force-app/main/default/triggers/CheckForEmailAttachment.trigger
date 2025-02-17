/**
 * @description It will executes every time after when an attachment is inserted
 */
trigger CheckForEmailAttachment on Attachment(after insert) {
  CheckForEmailAttachmentHandler.TriggerVariablesWrapper checkForEmailAttachmentWrap = new CheckForEmailAttachmentHandler.TriggerVariablesWrapper();
  checkForEmailAttachmentWrap.afterTrigger = Trigger.isAfter;
  checkForEmailAttachmentWrap.insertTrigger = Trigger.isInsert;
  checkForEmailAttachmentWrap.emailAttachments = Trigger.new;
  CheckForEmailAttachmentHandler.getAttachmentUploadedInContentVersionForPDFFileType(checkForEmailAttachmentWrap);
}
